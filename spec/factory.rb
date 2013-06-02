# En utilisant le symbole ':user', nous faisons que
# Factory Girl simule un modèle User.

FactoryGirl.define :user do |user|
	user.nom "Jonathan Donier"
	user.email "jdonier@example.com"
	user.password "foobar"
	user.password_confirmation "foobar"
end	

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end