describe 'Botões de Radio', :radio do

    before(:each) do
        visit 'https://training-wheels-protocol.herokuapp.com/radios'
    end

        it 'seleção por ID', :radioId do
            choose('cap')
        end

        it 'seleção por find e css selector', :radioFind do
            find('input[value=guardians]').click
        end


    after (:each) do
        sleep 3
    end
end