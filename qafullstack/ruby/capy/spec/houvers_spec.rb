describe 'Mouse hover', :hovers do
    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/hovers'
    end

    it 'Quando passo a mouse sobre o Blade' do
        card = find('img[alt=Blade]')
        card.hover

        expect(page).to have_content 'Nome: Blade'
    end

    it 'Quando passo a mouse sobre o Pantera Negra' do
        card = find('img[alt="Pantera Negra"]')
        card.hover

        expect(page).to have_content 'Nome: Pantera Negra'
    end

    it 'Quando passo a mouse sobre o homem aranha' do
        card = find('img[alt="Homem Aranha"]')
        card.hover

        expect(page).to have_content 'Nome: Homem Aranha'
    end

    after (:each) do
        sleep 0.5
    end
end