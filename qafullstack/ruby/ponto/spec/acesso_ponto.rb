describe 'acesso_ponto' do
    it'login com sucesso' do
        visit 'https://portalth.algarnet.com.br/'

        fill_in'txtLogin', with: '0334412' #Id
        fill_in'txtSenha', with: 'R3131rafa!' #name

        #fill_in encontra o forms e de acordo com o 'Id' e 'name'

        click_button 'btnEntrar'

        expect(find('#Rafael Lins Mota').visible?).to be true
        #identificar a mensagem da pagina pra verificação se deu certo o acesso.
        
        expect(find('#Rafael Lins Mota')).to have_content 'Olá, Tony Stark. Você acessou a área logada!'
        #expect(find('#flash').text).to include 'Olá, Tony Stark. Você acessou a área logada!'
    end

end        