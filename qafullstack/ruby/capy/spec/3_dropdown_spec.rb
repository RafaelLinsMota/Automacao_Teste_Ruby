describe 'DROPBOX', :dropdown do
    
    it 'Item especifico simples', :simples do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        select('Loki', from: 'dropdown')
        sleep 3 #temporario
    end

    it 'item especifico como o find', :find do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list') #informação retirada no inspecionamento class="avenger-list"
        drop.find('option', text:'Scott Lang').select_option
        sleep 3 #temporario
    end

    it 'qualquer item', :sample do
        visit 'https://training-wheels-protocol.herokuapp.com/dropdown'
        drop = find('.avenger-list')
        drop.all('option').sample.select_option
    end

end
