describe 'Drag and Drop', :drop do
#Executar só esse .rb usar rspec --tag @drop

    before(:each) do
        visit'https://training-wheels-protocol.herokuapp.com/drag_and_drop'
    end   

    it 'Homem Aranha pertence ao time do Stark' do
        stark = find('.team-stark .column')
        cap = find('.team-cap .column')

        spiderman = find('img[alt$=Aranha')
        spiderman.drag_to stark
        sleep 5

        expect(stark).to have_css 'img[alt$=Aranha'
        expect(cap).not_to  have_css 'img[alt$=Aranha'

   end

end    