module ApplicationHelper
# Retourner un titre bas� sur la page.
  def titre
    base_titre = "Cerbere Capital"
    if @titre.nil?
      base_titre
    else
      "#{base_titre} | #{@titre}"
    end
	end
end
