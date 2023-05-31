# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Area.create([
  {name: 'Carga y Consolidacion'},
  {name: 'Devoluciones'},
  {name: 'Operaciones'},
  {name: 'Recibo'},
  {name: 'Recursos Humanos'},
  {name: 'Refrigerados'},
  {name: 'Surtido'},
  {name: 'Surtido Cajas'}
])

Position.create([
  {name: 'Alimentador'},
  {name: 'Alimentador secos'},
  {name: 'Ayudante de almacén'},
  {name: 'Ayudante de canastillas'},
  {name: 'Ayudante de carga'},
  {name: 'Ayudante de devoluciones'},
  {name: 'Consolidador refrigerado'},
  {name: 'Consolidador secos'},
  {name: 'Despachador'},
  {name: 'Montacarguista'},
  {name: 'Operdador de descarga'},
  {name: 'Recibidor'},
  {name: 'Recibidor de devoluciones'},
  {name: 'Surtido Cajas'},
  {name: 'Surtido Piezas'},
  {name: 'Surtido Piezas refrigerado'},
  {name: 'Stock Picker'},
  {name: 'Verificador'},
])

User.create!([
  {name: 'Jaime Hernandez Soltero', area: Area.find_by_name('Carga y Consolidacion'), position: 'Encargado Consolidacion', email: 'jaime.hernandez@oxxo.com', password: 'passphrase'},
  {name: 'Christian Ortiz Gazpar', area: Area.find_by_name('Carga y Consolidacion'), position: 'Encargado Despacho', email: 'christian.ortiz@oxxo.com', password: 'passphrase'},
  {name: 'Emmanuel Carreras Aispuro', area: Area.find_by_name('Carga y Consolidacion'), position: 'Encargado Consolidacion', email: 'emmanuel.carreras@oxxo.com', password: 'passphrase'},
  {name: 'Francisco Mejia Sanjuan', area: Area.find_by_name('Carga y Consolidacion'), position: 'Encargado Consolidacion', email: 'francisco.mejia@oxxo.com', password: 'passphrase'},
  {name: 'Jorge Vargas Torres', area: Area.find_by_name('Devoluciones'), position: 'Encargado Devoluciones y Merma', email: 'jorge.vargast@oxxo.com', password: 'passphrase'},
  {name: 'CARLOS EDUARDO LOPEZ MUÑOZ', area: Area.find_by_name('Devoluciones'), position: 'Encargado Devoluciones y Merma', email: 'carlos.lopez@oxxo.com', password: 'passphrase'},
  {name: 'Ricardo Hernandez Perez', area: Area.find_by_name('Operaciones'), position: 'Coordinador Operaciones', email: 'ricardo.hernandez@oxxo.com', password: 'passphrase'},
  {name: 'Ramon Aguirre Aguirre', area: Area.find_by_name('Operaciones'), position: 'Coordinador Operaciones', email: 'ramon.aguirre@oxxo.com', password: 'passphrase'},
  {name: 'GEOVANNY MANUEL GARCIA NARVAEZ', area: Area.find_by_name('Operaciones'), position: 'Coordinador Operaciones', email: 'geovannym.garcia@oxxo.com', password: 'passphrase'},
  {name: 'ROGELIO DANIEL JIMENEZ ARCE', area: Area.find_by_name('Operaciones'), position: 'Coordinador Operaciones', email: 'rogelio.jimenez@oxxo.com', password: 'passphrase'},
  {name: 'Patricio Zamora Castro', area: Area.find_by_name('Operaciones'), position: 'Coordinador Operaciones', email: 'patricio.zamora@oxxo.com', password: 'passphrase'},
  {name: 'Jose Carlos Lopez Osorio', area: Area.find_by_name('Operaciones'), position: 'Coordinador Operaciones', email: 'josec.lopez1@oxxo.com', password: 'passphrase'},
  {name: 'Jose Juan Cedano Alzaga', area: Area.find_by_name('Recibo'), position: 'Encargado Recibo', email: 'jose.cedano@oxxo.com', password: 'passphrase'},
  {name: 'Omar Emmanuel Hernandez Vazquez', area: Area.find_by_name('Recibo'), position: 'Encargado Despacho', email: 'omar.hernandezv@oxxo.com', password: 'passphrase'},
  {name: 'Alfonso Rendón Hernández', area: Area.find_by_name('Recibo'), position: 'Encargado Despacho', email: 'alfonso.rendon@oxxo.com', password: 'passphrase'},
  {name: 'Luis Antonio Romero Amezcua', area: Area.find_by_name('Recibo'), position: 'Encargado Recibo', email: 'luis.romeroamezcua@oxxo.com', password: 'passphrase'},
  {name: 'Monserrat de Jesus Solis Cruz', area: Area.find_by_name('Recursos Humanos'), position: 'Jefa De Recursos Humanos', email: 'monserrat.solis@oxxo.com', password: 'passphrase'},
  {name: 'Elizabeth Barragan Rodriguez', area: Area.find_by_name('Recursos Humanos'), position: 'Encargado Reclutamiento y Capacitacion', email: 'elizabeth.barragan@oxxo.com', password: 'passphrase'},
  {name: 'Diana Ivette Vazquez Mercado', area: Area.find_by_name('Recursos Humanos'), position: 'Reclutamiento y Selección', email: 'diana.vazquez@oxxo.com', password: 'passphrase'},
  {name: 'Juana Citllali Robles Renteria', area: Area.find_by_name('Recursos Humanos'), position: 'Reclutamiento y Selección', email: 'juana.robles@oxxo.com', password: 'passphrase'},
  {name: 'Francisco Manuel Dueñas Gutierrez', area: Area.find_by_name('Recursos Humanos'), position: 'Coordinador De Recursos Humanos', email: 'francisco.duenas@oxxo.com', password: 'passphrase'},
  {name: 'Zurisadai Andrade', area: Area.find_by_name('Recursos Humanos'), position: 'Encargado Administracion Personal', email: 'zurisadai.andrade@oxxo.com', password: 'passphrase'},
  {name: 'Diana Alexandra Espinosa Martinez', area: Area.find_by_name('Recursos Humanos'), position: 'Encargado Seguridad y Salud Ocupacional', email: 'diana.espinosa@oxxo.com', password: 'passphrase'},
  {name: 'Juan Pablo Bautista Cardenas', area: Area.find_by_name('Refrigerados'), position: 'Encargado Surtido Refrigerados', email: 'juanp.bautista@oxxo.com', password: 'passphrase'},
  {name: 'Norma Cecilia Carreon Gutierrez', area: Area.find_by_name('Refrigerados'), position: 'Encargado Surtido Refrigerados', email: 'norma.carreon@oxxo.com', password: 'passphrase'},
  {name: 'Christian Celis Salgado', area: Area.find_by_name('Refrigerados'), position: 'Encargado Surtido Refrigerados', email: 'christian.celis@oxxo.com', password: 'passphrase'},
  {name: 'Jose De Jesus Vazquez Quezada', area: Area.find_by_name('Surtido'), position: 'Encargado Surtido', email: 'jose.vazquezq@oxxo.com', password: 'passphrase'},
  {name: 'Jose Martin Serrano Navarro', area: Area.find_by_name('Surtido'), position: 'Encargado Surtido', email: 'jose.serrano@oxxo.com', password: 'passphrase'},
  {name: 'Francisco Javier Gallardo Navarro', area: Area.find_by_name('Surtido'), position: 'Encargado Surtido', email: 'francisco.gallardo@oxxo.com', password: 'passphrase'},
  {name: 'David Israel Hernandez Garcia', area: Area.find_by_name('Surtido'), position: 'Encargado Surtido', email: 'davidi.hernandez@oxxo.com', password: 'passphrase'},
  {name: 'Aaron Alberto Sanchez Bustamante', area: Area.find_by_name('Surtido'), position: 'Encargado Surtido', email: 'aaron.sanchez@oxxo.com', password: 'passphrase'},
  {name: 'Fernando Villarreal Gutierrez', area: Area.find_by_name('Surtido Cajas'), position: 'Encargado Surtido Cajas', email: 'fernando.villarrealg@oxxo.com', password: 'passphrase'},
])

position = Position.ids
boss = User.where('position LIKE ?', 'Encargado%').ids
coordinator = User.where('position LIKE ?', 'Coordinador%').ids
Faker::Config.locale = 'es-MX'


100.times do
Format.create!(
  employee_name: Faker::Name.name, 
  employee_number: Faker::Bank.account_number, 
  creation_date: [Date.today.days_ago(rand(1..15)), Date.today.weeks_ago(rand(2..26))].sample, 
  current_position_id: position.sample, 
  new_position_id: position.sample, 
  current_boss_id: boss.sample, 
  vacant_boss_id: boss.sample, 
  vacant_coordinator_id: coordinator.sample, 
  notify: "#{User.ids.sample},  #{User.ids.sample}"
)
end

Format.all.each do |f|
  f.update(
    creation_date: [
      Date.today.days_ago(rand(1..200)),
      Date.today.weeks_ago(rand(3..28))
    ].sample
  )
end