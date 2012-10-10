# coding: utf-8

require 'spec_helper'

feature 'gerenciar mecanico' do

  scenario 'incluir mecanico' do #, :javascript => true  do

    funcao = FactoryGirl.create(:funcao, :nome => 'XXX')

    visit new_mecanico_path

    preencher_e_verificar_mecanico

    

  end

  scenario 'alterar mecanico' do #, :javascript => true  do

    funcao = FactoryGirl.create(:funcao, :nome => 'XXX')

    mecanico = FactoryGirl.create(:mecanico,:funcao => funcao)

    visit edit_mecanico_path(mecanico)

    preencher_e_verificar_mecanico


  end

  scenario 'excluir mecanico' do #, :javascript => true  do

    funcao = FactoryGirl.create(:funcao, :nome => 'XXX')

    mecanico = FactoryGirl.create(:mecanico,:funcao => funcao)

    visit mecanicos_path

    click_link 'Excluir'
    
    
  end



  def preencher_e_verificar_mecanico

    fill_in 'Matricula',  :with => "12345"
    fill_in 'Nome', :with => 'Luiz'
    
    select 'XXX', :on => 'Função'
    
    click_button 'Salvar'
    page.should have_content 'Matricula: 12345'
    page.should have_content 'Nome: Luiz'
    page.should have_content 'Função: XXX'
    
  end

      

end
