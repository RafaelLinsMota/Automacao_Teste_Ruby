describe 'Caixas de seleção', :checkbox do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/checkboxes'
    end

        it 'marcando e desmarcando uma opção', :checkSimples do
            check( 'antman')
            uncheck ('thor')
        end

        it 'marcando com find set true e false', :checkFind do
            find('input[value=cap]').set(true)
            find('input[value=guardians]').set(false)
        end

    after (:each) do
        sleep 3
    end
end
