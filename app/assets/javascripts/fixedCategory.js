(function(){

    // window.scrollY cross Browser
    var scrollY = function () {
        var supportPageOffset = window.pageXOffset !== undefined;
        var isCSS1Compat = ((document.compatMode || "") === "CSS1Compat");
        return supportPageOffset ? window.pageYOffset : isCSS1Compat ? document.documentElement.scrollTop : document.body.scrollTop;
    };

    window.makeSticky = function (element) {
        // Les variables
        var rect,
            top,
            constraintRect,
            constraintBottom;
        var offset = parseInt(element.getAttribute('data-offset') || 0, 10);
        var constraint = document.body;
        if (element.getAttribute('data-constraint')){
            constraint = document.querySelector(element.getAttribute('data-constraint'))
        }
        var fake = document.createElement('div');

        // Fonctions
        // Permet de stocker la valeurs utiles pour le calcul des positions
        var setValues = function () {
            rect = element.getBoundingClientRect();
            constraintRect = constraint.getBoundingClientRect();
            constraintBottom = constraintRect.top + scrollY() + constraintRect.height - offset - rect.height;
            top = rect.top + scrollY();
            fake.style.width = 906 + "px";
            fake.style.height= rect.height + "px";
        };

        var onScroll = function () {
            if (scrollY() > constraintBottom && element.style.position != 'absolute') {
                element.style.position = 'absolute';
                element.style.bottom = '0';
                element.style.top = 'auto'
            } else if (scrollY() > top - offset - 50 && scrollY() < constraintBottom && element.style.position != 'fixed') {
                element.classList.add('fixed');
                element.style.position = 'fixed';
                element.style.top = offset + 50 + "px";
                element.style.bottom = 'auto';
                element.style.width = 906 + "px";
                element.style.left = '50%';
                element.style.right = '50%';
                element.style.marginLeft = -453 + 'px';
                element.style.marginRight = -453 + 'px';
                element.parentNode.insertBefore(fake, element)
            } else if (scrollY() < top - offset && element.style.position != 'static') {
                element.classList.remove('fixed');
                element.style.position = 'static';
                element.style.left = 'none';
                element.style.right = 'none';
                element.style.marginRight = 'auto';
                element.style.marginLeft = 'auto';
                if (element.parentNode.contains(fake)) {
                    element.parentNode.removeChild(fake)
                }
            }
        };

        var onResize = function () {
            element.style.width = 906 + "px";
            element.classList.remove('fixed');
            element.style.position = "static";
            fake.style.display = "none";
            setValues();
            fake.style.display = "block";
            onScroll()
        };

        // Listener
        window.addEventListener('scroll', onScroll);
        window.addEventListener('resize', onResize);
        window.addEventListener('load', onResize);
        // Initialisation
        setValues()
    };

    var elements = document.querySelectorAll('[data-stickycat]');
    for (var i = 0; i < elements.length; i++) {
        makeSticky(elements[i])
    }
})();