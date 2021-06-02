describe 'MOUSE HOVERS', :hovers do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/hovers'
    end

    it 'Quando passo a mouse sobre o Blade' do
        card = find('img[alt^=Blade]')
        #Quero uma imagem cujo valor de alt começa com Blade
        card.hover

        expect(page).to have_content 'Nome: Blade'
    end

    it 'Quando passo a mouse sobre o Pantera Negra' do
        card = find('img[alt$="Negra"]')
        #Quero uma imagem cujo valor de alt termina com Negra
        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'Quando passo a mouse sobre o homem aranha' do
        card = find('img[alt*="Aranha"]')
        #Quero uma imagem cujo valor de alt contém com Aranha
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end

    after (:each) do
        sleep 0.5 #temporario só para verificar o resultado
    end
end