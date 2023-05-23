# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Area.create([
  {name: "CARGA Y CONSOLIDACION"},
  {name: "DEVOLUCIONES"},
  {name: "OPERACIONES"},
  {name: "RECIBO"},
  {name: "RECURSOS HUMANOS"},
  {name: "REFRIGERADOS"},
  {name: "SURTIDO"},
  {name: "SURTIDO CAJAS"}
])

User.create!([
  {name: 'Jaime Hernandez Soltero', area: Area.find_by_name('CARGA Y CONSOLIDACION'), position: 'ENCARGADO CONSOLIDACION', email: 'jaime.hernandez@oxxo.com', password: 'passfrase'},
  {name: 'Christian Ortiz Gazpar', area: Area.find_by_name('CARGA Y CONSOLIDACION'), position: 'ENCARGADO DESPACHO', email: 'christian.ortiz@oxxo.com', password: 'passfrase'},
  {name: 'Emmanuel Carreras Aispuro', area: Area.find_by_name('CARGA Y CONSOLIDACION'), position: 'ENCARGADO CONSOLIDACION', email: 'emmanuel.carreras@oxxo.com', password: 'passfrase'},
  {name: 'Francisco Mejia Sanjuan', area: Area.find_by_name('CARGA Y CONSOLIDACION'), position: 'ENCARGADO CONSOLIDACION', email: 'francisco.mejia@oxxo.com', password: 'passfrase'},
  {name: 'Jorge Vargas Torres', area: Area.find_by_name('DEVOLUCIONES'), position: 'ENCARGADO DEVOLUCIONES Y MERMA', email: 'jorge.vargast@oxxo.com', password: 'passfrase'},
  {name: 'CARLOS EDUARDO LOPEZ MUÑOZ', area: Area.find_by_name('DEVOLUCIONES'), position: 'ENCARGADO DEVOLUCIONES Y MERMA', email: 'carlos.lopez@oxxo.com', password: 'passfrase'},
  {name: 'Ricardo Hernandez Perez', area: Area.find_by_name('OPERACIONES'), position: 'COORDINADOR OPERACIONES', email: 'ricardo.hernandez@oxxo.com', password: 'passfrase'},
  {name: 'Ramon Aguirre Aguirre', area: Area.find_by_name('OPERACIONES'), position: 'COORDINADOR OPERACIONES', email: 'ramon.aguirre@oxxo.com', password: 'passfrase'},
  {name: 'GEOVANNY MANUEL GARCIA NARVAEZ', area: Area.find_by_name('OPERACIONES'), position: 'COORDINADOR OPERACIONES', email: 'geovannym.garcia@oxxo.com', password: 'passfrase'},
  {name: 'ROGELIO DANIEL JIMENEZ ARCE', area: Area.find_by_name('OPERACIONES'), position: 'COORDINADOR OPERACIONES', email: 'rogelio.jimenez@oxxo.com', password: 'passfrase'},
  {name: 'Patricio Zamora Castro', area: Area.find_by_name('OPERACIONES'), position: 'COORDINADOR OPERACIONES', email: 'patricio.zamora@oxxo.com', password: 'passfrase'},
  {name: 'Jose Carlos Lopez Osorio', area: Area.find_by_name('OPERACIONES'), position: 'COORDINADOR OPERACIONES', email: 'josec.lopez1@oxxo.com', password: 'passfrase'},
  {name: 'Jose Juan Cedano Alzaga', area: Area.find_by_name('RECIBO'), position: 'ENCARGADO RECIBO', email: 'jose.cedano@oxxo.com', password: 'passfrase'},
  {name: 'Omar Emmanuel Hernandez Vazquez', area: Area.find_by_name('RECIBO'), position: 'ENCARGADO DESPACHO', email: 'omar.hernandezv@oxxo.com', password: 'passfrase'},
  {name: 'Alfonso Rendón Hernández', area: Area.find_by_name('RECIBO'), position: 'ENCARGADO DESPACHO', email: 'alfonso.rendon@oxxo.com', password: 'passfrase'},
  {name: 'Luis Antonio Romero Amezcua', area: Area.find_by_name('RECIBO'), position: 'ENCARGADO RECIBO', email: 'luis.romeroamezcua@oxxo.com', password: 'passfrase'},
  {name: 'Monserrat de Jesus Solis Cruz', area: Area.find_by_name('RECURSOS HUMANOS'), position: 'JEFA DE RECURSOS HUMANOS', email: 'monserrat.solis@oxxo.com', password: 'passfrase'},
  {name: 'Elizabeth Barragan Rodriguez', area: Area.find_by_name('RECURSOS HUMANOS'), position: 'ENCARGADO RECLUTAMIENTO Y CAPACITACION', email: 'elizabeth.barragan@oxxo.com', password: 'passfrase'},
  {name: 'Diana Ivette Vazquez Mercado', area: Area.find_by_name('RECURSOS HUMANOS'), position: 'RECLUTAMIENTO Y SELECCIÓN', email: 'diana.vazquez@oxxo.com', password: 'passfrase'},
  {name: 'Juana Citllali Robles Renteria', area: Area.find_by_name('RECURSOS HUMANOS'), position: 'RECLUTAMIENTO Y SELECCIÓN', email: 'juana.robles@oxxo.com', password: 'passfrase'},
  {name: 'Francisco Manuel Dueñas Gutierrez', area: Area.find_by_name('RECURSOS HUMANOS'), position: 'COORDINADOR DE RECURSOS HUMANOS', email: 'francisco.duenas@oxxo.com', password: 'passfrase'},
  {name: 'Zurisadai Andrade', area: Area.find_by_name('RECURSOS HUMANOS'), position: 'ENCARGADO ADMINISTRACION PERSONAL', email: 'zurisadai.andrade@oxxo.com', password: 'passfrase'},
  {name: 'Diana Alexandra Espinosa Martinez', area: Area.find_by_name('RECURSOS HUMANOS'), position: 'ENCARGADO SEGURIDAD Y SALUD OCUPACIONAL', email: 'diana.espinosa@oxxo.com', password: 'passfrase'},
  {name: 'Juan Pablo Bautista Cardenas', area: Area.find_by_name('REFRIGERADOS'), position: 'ENCARGADO SURTIDO REFRIGERADOS', email: 'juanp.bautista@oxxo.com', password: 'passfrase'},
  {name: 'Norma Cecilia Carreon Gutierrez', area: Area.find_by_name('REFRIGERADOS'), position: 'ENCARGADO SURTIDO REFRIGERADOS', email: 'norma.carreon@oxxo.com', password: 'passfrase'},
  {name: 'Christian Celis Salgado', area: Area.find_by_name('REFRIGERADOS'), position: 'ENCARGADO SURTIDO REFRIGERADOS', email: 'christian.celis@oxxo.com', password: 'passfrase'},
  {name: 'Jose De Jesus Vazquez Quezada', area: Area.find_by_name('SURTIDO'), position: 'ENCARGADO SURTIDO', email: 'jose.vazquezq@oxxo.com', password: 'passfrase'},
  {name: 'Jose Martin Serrano Navarro', area: Area.find_by_name('SURTIDO'), position: 'ENCARGADO SURTIDO', email: 'jose.serrano@oxxo.com', password: 'passfrase'},
  {name: 'Francisco Javier Gallardo Navarro', area: Area.find_by_name('SURTIDO'), position: 'ENCARGADO SURTIDO', email: 'francisco.gallardo@oxxo.com', password: 'passfrase'},
  {name: 'David Israel Hernandez Garcia', area: Area.find_by_name('SURTIDO'), position: 'ENCARGADO SURTIDO', email: 'davidi.hernandez@oxxo.com', password: 'passfrase'},
  {name: 'Aaron Alberto Sanchez Bustamante', area: Area.find_by_name('SURTIDO'), position: 'ENCARGADO SURTIDO', email: 'aaron.sanchez@oxxo.com', password: 'passfrase'},
  {name: 'Fernando Villarreal Gutierrez', area: Area.find_by_name('SURTIDO CAJAS'), position: 'ENCARGADO SURTIDO CAJAS', email: 'fernando.villarrealg@oxxo.com', password: 'passfrase'},
])