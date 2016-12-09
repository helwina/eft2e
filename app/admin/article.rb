ActiveAdmin.register Article do
  permit_params :titre, :description, :title, :image, :image1, :image2, :image3, :image4, :image5, :plant, :plant1, :plant2, :plant3, :plant4, :plant5,:category, :objet1col1, :objet1col2, :objet2col1, :objet2col2, :objet3col1, :objet3col2, :objet4col1, :objet4col2, :objet5col1, :objet5col2, :objet6col1, :objet6col2, :objet7col1, :objet7col2, :objet8col1, :objet8col2
  form do |f|
    f.inputs 'Project Details' do
      f.input :titre, label: 'titre de l article'
      f.input :description
      f.input :title, label: 'titre qui apparais dans l url'
      f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:original))
      f.input :image1, :as => :file, :hint => f.template.image_tag(f.object.image1.url(:original))
      f.input :image2, :as => :file, :hint => f.template.image_tag(f.object.image2.url(:original))
      f.input :image3, :as => :file, :hint => f.template.image_tag(f.object.image3.url(:original))
      f.input :image4, :as => :file, :hint => f.template.image_tag(f.object.image4.url(:original))
      f.input :image5, :as => :file, :hint => f.template.image_tag(f.object.image5.url(:original))
      f.input :plant, :as => :file, :hint => f.template.image_tag(f.object.plant.url(:original))
      f.input :plant1, :as => :file, :hint => f.template.image_tag(f.object.plant1.url(:original))
      f.input :plant2, :as => :file, :hint => f.template.image_tag(f.object.plant2.url(:original))
      f.input :plant3, :as => :file, :hint => f.template.image_tag(f.object.plant3.url(:original))
      f.input :plant4, :as => :file, :hint => f.template.image_tag(f.object.plant4.url(:original))
      f.input :plant5, :as => :file, :hint => f.template.image_tag(f.object.plant5.url(:original))
      f.input :category, label: 'category 1 = Habitat, 2 = Habitat, 3 = Tertiaire, 4 = Social, 5
 = Culturel, 6 = Enseignement, 7 = Sportif, 8 = Industriel, 9 = Santé uniquement le numero pour le premier puis un
espace et cat suivie du numereau sans espace pour les autre cat3 pour la categories 3 etc...'
      f.input :objet1col1, label: 'maitre d ouvrage'
      f.input :objet1col2, label: 'nom du maitre d ouvrage'
      f.input :objet2col1, label: 'programme'
      f.input :objet2col2, label: 'nom du programme'
      f.input :objet3col1, label: 'mandataire'
      f.input :objet3col2, label: 'nom mandataire'
      f.input :objet4col1, label: 'missions'
      f.input :objet4col2, label: 'nom des missions'
      f.input :objet5col1, label: 'lots'
      f.input :objet5col2, label: 'nom des lots'
      f.input :objet6col1, label: 'cout'
      f.input :objet6col2, label: 'prix du cout'
      f.input :objet7col1, label: 'phases'
      f.input :objet7col2, label: 'nom de la phases'
      f.input :objet8col1, label: 'particularites'
      f.input :objet8col2, label: 'liste des particulites'
      # Will preview the image when the object is edited
    end
    f.actions
  end

end
