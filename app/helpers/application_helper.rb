module ApplicationHelper
# Retourner un titre basé sur la page.
  def titre
    base_titre = "Cerbère Capital"
    if @titre.nil?
      base_titre
    else
      "#{base_titre} | #{@titre}"
    end
  end
  def logo
    image_tag("logo.jpg", :alt => "Application Exemple", :class => "round")
  end
end
