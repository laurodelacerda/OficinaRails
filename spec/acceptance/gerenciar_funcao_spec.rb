# coding: utf-8

require 'spec_helper'

feature 'gerenciar funcao' do

  scenario 'incluir Funcao' do # , :javascript => true  do

    visit new_funcao_path

    preencher_e_verificar_funcao

    

  end

   def preencher_e_verificar_funcao

      fill_in 'Nome',  :with => "eletricista"

        
 
      click_button 'Salvar'

      page.should have_content 'Nome: eletricista'

      

   end
end
