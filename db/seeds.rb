# User seeds
User.create!({first_name: 'Gessica', last_name: 'Louise', email: 'djez@teste.com', password: '1234567'})
User.create!({first_name: 'Lucca', last_name: 'Dittrich', email: 'lucca@teste.com', password: '1234567'})
User.create!({first_name: 'Ícaro', last_name: 'Leon', email: 'icaro@teste.com', password: '1234567'})
User.create!({first_name: 'Gabriel', last_name: 'Ferreira', email: 'gabriel@teste.com', password: '1234567'})
# Items seeds
Item.create!({name: 'Furadeira', description: 'TM500 da Black + Decker é ideal para um trabalho mais rápido em concreto e azulejo', price: 20, user_id: 1})
Item.create!({name: 'Câmera Digital Canon Semiprofissional 18MP', description: 'Se você é daqueles que gosta que suas fotos saiam perfeitas, principalmente na hora de registrar os momentos daquela viagem com os amigos ou até mesmo com a família, você precisa da Câmera Digital Semiprofissional EOS Rebel T100 da Canon.', price: 50, user_id: 2})
Item.create!({name: 'Apple MacBook Pro 14 Polegadas', description: 'M1 Pro da Apple com 8 CPU e 14 GPU, 16 GB RAM, 512 GB SSD', price: 300, user_id: 3})
Item.create!({name: 'Playstation 5', description: 'Acompanha 1 controle DualSense e 1 jogo pré-instalado.', price: 150, user_id: 4})
