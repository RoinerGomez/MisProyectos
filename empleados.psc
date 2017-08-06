Proceso GESTION_EMPLEADOS
// Muestra como hacer un menú simple con las estructuras Repetir-Hasta Que y Según
Definir Opcion_menu,opcion_empleado,opcion_liquidacion,filas,columnas,i,j,opcion_buscar Como Entero;
Definir id,edad,fecha_actual,bonificacion como Numerico;
Definir empleado,respuesta,apellido,seccional,facultad,cargo Como Caracter;
Definir encontrado como Logico; 
Definir Empleados_Matriz como Cadena;
id=0;
opcion_empleado=0;edad=0;bonificacion=0;filas=115;columnas=9;apellido="";seccional="";facultad="";cargo="";empleado="";respuesta="si";
encontrado=Falso;fecha_actual=2017;
Dimension Empleados_Matriz[columnas,filas];
Empleados_Matriz[0,0]='ID empleado';	Empleados_Matriz[1,0]='Apellido';		Empleados_Matriz[2,0]='Nombre';		Empleados_Matriz[3,0]='Seccional';		Empleados_Matriz[4,0]='Facultad';			Empleados_Matriz[5,0]='Cargo';					Empleados_Matriz[6,0]='Salario';	Empleados_Matriz[7,0]='Fch comienzo';	Empleados_Matriz[8,0]='Fch nacimiento';
Empleados_Matriz[0,1]='1968';			Empleados_Matriz[1,1]='Burgos';			Empleados_Matriz[2,1]='Jeronimo';	Empleados_Matriz[3,1]='Palmira';		Empleados_Matriz[4,1]='Administración';		Empleados_Matriz[5,1]='Administrativo';			Empleados_Matriz[6,1]='3200000';	Empleados_Matriz[7,1]='05/04/1982';		Empleados_Matriz[8,1]='28/09/1951';
Empleados_Matriz[0,2]='1674';			Empleados_Matriz[1,2]='Villegas';		Empleados_Matriz[2,2]='Estefania';	Empleados_Matriz[3,2]='Palmira';		Empleados_Matriz[4,2]='Administración';		Empleados_Matriz[5,2]='Docente';				Empleados_Matriz[6,2]='3200000';	Empleados_Matriz[7,2]='25/03/1992';		Empleados_Matriz[8,2]='17/01/1964';
Empleados_Matriz[0,3]='1516';			Empleados_Matriz[1,3]='Fernandez';		Empleados_Matriz[2,3]='Guillermo';	Empleados_Matriz[3,3]='Palmira';		Empleados_Matriz[4,3]='Administración';		Empleados_Matriz[5,3]='Docente';				Empleados_Matriz[6,3]='4500000';	Empleados_Matriz[7,3]='06/03/1985';		Empleados_Matriz[8,3]='26/06/1963';
Empleados_Matriz[0,4]='1330';			Empleados_Matriz[1,4]='Ramirez';		Empleados_Matriz[2,4]='Eliana';		Empleados_Matriz[3,4]='Palmira';		Empleados_Matriz[4,4]='Administración';		Empleados_Matriz[5,4]='Docente';				Empleados_Matriz[6,4]='3200000';	Empleados_Matriz[7,4]='14/02/1989';		Empleados_Matriz[8,4]='17/05/1964';
Empleados_Matriz[0,5]='1657';			Empleados_Matriz[1,5]='Carmona';		Empleados_Matriz[2,5]='Jose';		Empleados_Matriz[3,5]='Palmira';		Empleados_Matriz[4,5]='Administración';		Empleados_Matriz[5,5]='Docente';				Empleados_Matriz[6,5]='3200000';	Empleados_Matriz[7,5]='06/12/1987';		Empleados_Matriz[8,5]='10/10/1963';
Empleados_Matriz[0,6]='1573';			Empleados_Matriz[1,6]='De santis';		Empleados_Matriz[2,6]='Marcela';	Empleados_Matriz[3,6]='Palmira';		Empleados_Matriz[4,6]='Administración';		Empleados_Matriz[5,6]='Aux. Administrativo';	Empleados_Matriz[6,6]='1500000';	Empleados_Matriz[7,6]='07/07/1988';		Empleados_Matriz[8,6]='31/05/1960';
Empleados_Matriz[0,7]='1658';			Empleados_Matriz[1,7]='Franco';			Empleados_Matriz[2,7]='Daniela';	Empleados_Matriz[3,7]='Palmira';		Empleados_Matriz[4,7]='Administración';		Empleados_Matriz[5,7]='Docente';				Empleados_Matriz[6,7]='3200000';	Empleados_Matriz[7,7]='06/06/1988';		Empleados_Matriz[8,7]='14/10/1963';
Empleados_Matriz[0,8]='1078';			Empleados_Matriz[1,8]='Cortes';			Empleados_Matriz[2,8]='Rafael';		Empleados_Matriz[3,8]='Palmira';		Empleados_Matriz[4,8]='Diseño';				Empleados_Matriz[5,8]='Administrativo';			Empleados_Matriz[6,8]='4200000';	Empleados_Matriz[7,8]='01/04/1986';		Empleados_Matriz[8,8]='21/11/1962';
Empleados_Matriz[0,9]='1695';			Empleados_Matriz[1,9]='Berrio';			Empleados_Matriz[2,9]='Camilo';		Empleados_Matriz[3,9]='Palmira';		Empleados_Matriz[4,9]='Diseño';				Empleados_Matriz[5,9]='Docente';				Empleados_Matriz[6,9]='3200000';	Empleados_Matriz[7,9]='20/10/1984';		Empleados_Matriz[8,9]='05/01/1960';
Empleados_Matriz[0,10]='1285';			Empleados_Matriz[1,10]='Arias';			Empleados_Matriz[2,10]='Francisco';	Empleados_Matriz[3,10]='Palmira';		Empleados_Matriz[4,10]='Diseño';			Empleados_Matriz[5,10]='Docente';				Empleados_Matriz[6,10]='3200000';	Empleados_Matriz[7,10]='27/12/1984';	Empleados_Matriz[8,10]='22/12/1962';
Empleados_Matriz[0,11]='1284';			Empleados_Matriz[1,11]='Merizalde';		Empleados_Matriz[2,11]='Antonio';	Empleados_Matriz[3,11]='Palmira';		Empleados_Matriz[4,11]='Diseño';			Empleados_Matriz[5,11]='Docente';				Empleados_Matriz[6,11]='3200000';	Empleados_Matriz[7,11]='04/01/1985';	Empleados_Matriz[8,11]='11/12/1962';
Empleados_Matriz[0,12]='1517';			Empleados_Matriz[1,12]='Restrepo';		Empleados_Matriz[2,12]='Karen';		Empleados_Matriz[3,12]='Palmira';		Empleados_Matriz[4,12]='Diseño';			Empleados_Matriz[5,12]='Aux. Administrativo';	Empleados_Matriz[6,12]='1500000';	Empleados_Matriz[7,12]='26/02/1985';	Empleados_Matriz[8,12]='07/07/1963';
Empleados_Matriz[0,13]='1674';			Empleados_Matriz[1,13]='Lemus';			Empleados_Matriz[2,13]='David';		Empleados_Matriz[3,13]='Palmira';		Empleados_Matriz[4,13]='Diseño';			Empleados_Matriz[5,13]='Docente';				Empleados_Matriz[6,13]='3200000';	Empleados_Matriz[7,13]='08/04/1990';	Empleados_Matriz[8,13]='12/09/1962';
Empleados_Matriz[0,14]='1056';			Empleados_Matriz[1,14]='Santana';		Empleados_Matriz[2,14]='Javier';	Empleados_Matriz[3,14]='Monteria';		Empleados_Matriz[4,14]='Comunicación';		Empleados_Matriz[5,14]='Administrativo';		Empleados_Matriz[6,14]='5600000';	Empleados_Matriz[7,14]='25/10/1979';	Empleados_Matriz[8,14]='24/08/1937';
Empleados_Matriz[0,15]='1977';			Empleados_Matriz[1,15]='Saldarriaga';	Empleados_Matriz[2,15]='Virginia';	Empleados_Matriz[3,15]='Monteria';		Empleados_Matriz[4,15]='Comunicación';		Empleados_Matriz[5,15]='Docente';				Empleados_Matriz[6,15]='4200000';	Empleados_Matriz[7,15]='09/09/1991';	Empleados_Matriz[8,15]='13/10/1960';
Empleados_Matriz[0,16]='1725';			Empleados_Matriz[1,16]='Posada';		Empleados_Matriz[2,16]='Sergio';	Empleados_Matriz[3,16]='Monteria';		Empleados_Matriz[4,16]='Comunicación';		Empleados_Matriz[5,16]='Docente';				Empleados_Matriz[6,16]='5600000';	Empleados_Matriz[7,16]='02/02/1978';	Empleados_Matriz[8,16]='02/06/1954';
Empleados_Matriz[0,17]='1675';			Empleados_Matriz[1,17]='Zea ';			Empleados_Matriz[2,17]='Jorge';		Empleados_Matriz[3,17]='Monteria';		Empleados_Matriz[4,17]='Comunicación';		Empleados_Matriz[5,17]='Docente';				Empleados_Matriz[6,17]='6500000';	Empleados_Matriz[7,17]='26/10/1981';	Empleados_Matriz[8,17]='01/09/1969';
Empleados_Matriz[0,18]='1968';			Empleados_Matriz[1,18]='Diaz ';			Empleados_Matriz[2,18]='Mariana';	Empleados_Matriz[3,18]='Monteria';		Empleados_Matriz[4,18]='Comunicación';		Empleados_Matriz[5,18]='Docente';				Empleados_Matriz[6,18]='3200000';	Empleados_Matriz[7,18]='01/01/1993';	Empleados_Matriz[8,18]='19/05/1969';
Empleados_Matriz[0,19]='1723';			Empleados_Matriz[1,19]='Giraldo';		Empleados_Matriz[2,19]='Esteban';	Empleados_Matriz[3,19]='Monteria';		Empleados_Matriz[4,19]='Ingeniería';		Empleados_Matriz[5,19]='Aux. Administrativo';	Empleados_Matriz[6,19]='1350000';	Empleados_Matriz[7,19]='06/08/1990';	Empleados_Matriz[8,19]='10/05/1965';
Empleados_Matriz[0,20]='1076';			Empleados_Matriz[1,20]='Idarraga';		Empleados_Matriz[2,20]='Jorge';		Empleados_Matriz[3,20]='Monteria';		Empleados_Matriz[4,20]='Ingeniería';		Empleados_Matriz[5,20]='Aux. Administrativo';	Empleados_Matriz[6,20]='1200000';	Empleados_Matriz[7,20]='30/07/1979';	Empleados_Matriz[8,20]='08/09/1940';
Empleados_Matriz[0,21]='1816';			Empleados_Matriz[1,21]='Simanca';		Empleados_Matriz[2,21]='Alejandro';	Empleados_Matriz[3,21]='Monteria';		Empleados_Matriz[4,21]='Ingeniería';		Empleados_Matriz[5,21]='Aux. Administrativo';	Empleados_Matriz[6,21]='1600000';	Empleados_Matriz[7,21]='08/07/1990';	Empleados_Matriz[8,21]='01/09/1969';
Empleados_Matriz[0,22]='1154';			Empleados_Matriz[1,22]='Pulgarin';		Empleados_Matriz[2,22]='Angelina';	Empleados_Matriz[3,22]='Monteria';		Empleados_Matriz[4,22]='Ingeniería';		Empleados_Matriz[5,22]='Administrativo';		Empleados_Matriz[6,22]='4100000';	Empleados_Matriz[7,22]='07/07/1987';	Empleados_Matriz[8,22]='07/11/1955';
Empleados_Matriz[0,23]='1294';			Empleados_Matriz[1,23]='Aguirre';		Empleados_Matriz[2,23]='Brenda';	Empleados_Matriz[3,23]='Monteria';		Empleados_Matriz[4,23]='Ingeniería';		Empleados_Matriz[5,23]='Docente';				Empleados_Matriz[6,23]='3200000';	Empleados_Matriz[7,23]='06/09/1984';	Empleados_Matriz[8,23]='05/09/1954';
Empleados_Matriz[0,24]='1428';			Empleados_Matriz[1,24]='Tamayo';		Empleados_Matriz[2,24]='Gloria';	Empleados_Matriz[3,24]='Monteria';		Empleados_Matriz[4,24]='Ingeniería';		Empleados_Matriz[5,24]='Docente';				Empleados_Matriz[6,24]='3200000';	Empleados_Matriz[7,24]='12/11/1986';	Empleados_Matriz[8,24]='23/03/1958';
Empleados_Matriz[0,25]='1814';			Empleados_Matriz[1,25]='Carmona ';		Empleados_Matriz[2,25]='Andrea';	Empleados_Matriz[3,25]='Monteria';		Empleados_Matriz[4,25]='Ingeniería';		Empleados_Matriz[5,25]='Docente';				Empleados_Matriz[6,25]='3200000';	Empleados_Matriz[7,25]='04/03/1989';	Empleados_Matriz[8,25]='17/08/1969';
Empleados_Matriz[0,26]='1978';			Empleados_Matriz[1,26]='Diaz ';			Empleados_Matriz[2,26]='Lucero';	Empleados_Matriz[3,26]='Monteria';		Empleados_Matriz[4,26]='Ingeniería';		Empleados_Matriz[5,26]='Docente';				Empleados_Matriz[6,26]='3200000';	Empleados_Matriz[7,26]='05/06/1980';	Empleados_Matriz[8,26]='26/09/1967';
Empleados_Matriz[0,27]='1531';			Empleados_Matriz[1,27]='Alzate';		Empleados_Matriz[2,27]='Angela';	Empleados_Matriz[3,27]='Monteria';		Empleados_Matriz[4,27]='Ingeniería';		Empleados_Matriz[5,27]='Técnico';				Empleados_Matriz[6,27]='2800000';	Empleados_Matriz[7,27]='11/05/1986';	Empleados_Matriz[8,27]='19/01/1967';
Empleados_Matriz[0,28]='1931';			Empleados_Matriz[1,28]='Arango';		Empleados_Matriz[2,28]='Felipe';	Empleados_Matriz[3,28]='Medellín';		Empleados_Matriz[4,28]='Administración';	Empleados_Matriz[5,28]='Administrativo';		Empleados_Matriz[6,28]='2560000';	Empleados_Matriz[7,28]='20/06/1989';	Empleados_Matriz[8,28]='28/05/1969';
Empleados_Matriz[0,29]='1932';			Empleados_Matriz[1,29]='Garces';		Empleados_Matriz[2,29]='Elena';		Empleados_Matriz[3,29]='Medellín';		Empleados_Matriz[4,29]='Administración';	Empleados_Matriz[5,29]='Administrativo';		Empleados_Matriz[6,29]='2400000';	Empleados_Matriz[7,29]='12/06/1989';	Empleados_Matriz[8,29]='08/06/1949';
Empleados_Matriz[0,30]='1291';			Empleados_Matriz[1,30]='Uribe';			Empleados_Matriz[2,30]='Carmen';	Empleados_Matriz[3,30]='Medellín';		Empleados_Matriz[4,30]='Administración';	Empleados_Matriz[5,30]='Aux. Administrativo';	Empleados_Matriz[6,30]='1350000';	Empleados_Matriz[7,30]='26/12/1984';	Empleados_Matriz[8,30]='14/04/1956';
Empleados_Matriz[0,31]='1530';			Empleados_Matriz[1,31]='Ospina';		Empleados_Matriz[2,31]='Daniel';	Empleados_Matriz[3,31]='Medellín';		Empleados_Matriz[4,31]='Administración';	Empleados_Matriz[5,31]='Docente';				Empleados_Matriz[6,31]='1460000';	Empleados_Matriz[7,31]='20/01/1991';	Empleados_Matriz[8,31]='15/01/1967';
Empleados_Matriz[0,32]='1152';			Empleados_Matriz[1,32]='Peláez';		Empleados_Matriz[2,32]='Alberto';	Empleados_Matriz[3,32]='Medellín';		Empleados_Matriz[4,32]='Administración';	Empleados_Matriz[5,32]='Docente';				Empleados_Matriz[6,32]='1350000';	Empleados_Matriz[7,32]='21/01/1990';	Empleados_Matriz[8,32]='23/10/1965';
Empleados_Matriz[0,33]='1079';			Empleados_Matriz[1,33]='Perez';			Empleados_Matriz[2,33]='Elena';		Empleados_Matriz[3,33]='Medellín';		Empleados_Matriz[4,33]='Administración';	Empleados_Matriz[5,33]='Docente';				Empleados_Matriz[6,33]='1350000';	Empleados_Matriz[7,33]='24/03/1986';	Empleados_Matriz[8,33]='02/12/1962';
Empleados_Matriz[0,34]='1676';			Empleados_Matriz[1,34]='Carmona';		Empleados_Matriz[2,34]='Sebastian';	Empleados_Matriz[3,34]='Medellín';		Empleados_Matriz[4,34]='Administración';	Empleados_Matriz[5,34]='Docente';				Empleados_Matriz[6,34]='1500000';	Empleados_Matriz[7,34]='18/10/1981';	Empleados_Matriz[8,34]='12/09/1969';
Empleados_Matriz[0,35]='1290';			Empleados_Matriz[1,35]='Cifuentes';		Empleados_Matriz[2,35]='Oscar';		Empleados_Matriz[3,35]='Medellín';		Empleados_Matriz[4,35]='Administración';	Empleados_Matriz[5,35]='Docente';				Empleados_Matriz[6,35]='1350000';	Empleados_Matriz[7,35]='03/01/1985';	Empleados_Matriz[8,35]='03/04/1966';
Empleados_Matriz[0,36]='1961';			Empleados_Matriz[1,36]='Jaramillo';		Empleados_Matriz[2,36]='Santiago';	Empleados_Matriz[3,36]='Medellín';		Empleados_Matriz[4,36]='Administración';	Empleados_Matriz[5,36]='Docente';				Empleados_Matriz[6,36]='1350000';	Empleados_Matriz[7,36]='05/11/1986';	Empleados_Matriz[8,36]='02/04/1965';
Empleados_Matriz[0,37]='1675';			Empleados_Matriz[1,37]='Melano';		Empleados_Matriz[2,37]='Luis';		Empleados_Matriz[3,37]='Medellín';		Empleados_Matriz[4,37]='Administración';	Empleados_Matriz[5,37]='Docente';				Empleados_Matriz[6,37]='1350000';	Empleados_Matriz[7,37]='17/03/1992';	Empleados_Matriz[8,37]='28/01/1964';
Empleados_Matriz[0,38]='1368';			Empleados_Matriz[1,38]='Mendez';		Empleados_Matriz[2,38]='Tammy';		Empleados_Matriz[3,38]='Medellín';		Empleados_Matriz[4,38]='Administración';	Empleados_Matriz[5,38]='Docente';				Empleados_Matriz[6,38]='1280000';	Empleados_Matriz[7,38]='11/03/1983';	Empleados_Matriz[8,38]='08/05/1959';
Empleados_Matriz[0,39]='1153';			Empleados_Matriz[1,39]='Ramirez';		Empleados_Matriz[2,39]='Tomas';		Empleados_Matriz[3,39]='Medellín';		Empleados_Matriz[4,39]='Administración';	Empleados_Matriz[5,39]='Técnico';				Empleados_Matriz[6,39]='1350000';	Empleados_Matriz[7,39]='13/01/1990';	Empleados_Matriz[8,39]='03/11/1965';
Empleados_Matriz[0,40]='1960';			Empleados_Matriz[1,40]='Girando';		Empleados_Matriz[2,40]='Felipe';	Empleados_Matriz[3,40]='Medellín';		Empleados_Matriz[4,40]='Administración';	Empleados_Matriz[5,40]='Aux. Administrativo';	Empleados_Matriz[6,40]='1350000';	Empleados_Matriz[7,40]='13/11/1986';	Empleados_Matriz[8,40]='22/03/1965';
Empleados_Matriz[0,41]='1908';			Empleados_Matriz[1,41]='Diez';			Empleados_Matriz[2,41]='Patricia';	Empleados_Matriz[3,41]='Medellín';		Empleados_Matriz[4,41]='Administración';	Empleados_Matriz[5,41]='Administrativo';		Empleados_Matriz[6,41]='5600000';	Empleados_Matriz[7,41]='15/05/1984';	Empleados_Matriz[8,41]='21/09/1958';
Empleados_Matriz[0,42]='1011';			Empleados_Matriz[1,42]='Sierra';		Empleados_Matriz[2,42]='Luisa';		Empleados_Matriz[3,42]='Medellín';		Empleados_Matriz[4,42]='Administración';	Empleados_Matriz[5,42]='Docente';				Empleados_Matriz[6,42]='2700000';	Empleados_Matriz[7,42]='03/02/1986';	Empleados_Matriz[8,42]='21/11/1964';
Empleados_Matriz[0,43]='1359';			Empleados_Matriz[1,43]='Vallejo';		Empleados_Matriz[2,43]='Sara';		Empleados_Matriz[3,43]='Medellín';		Empleados_Matriz[4,43]='Diseño';			Empleados_Matriz[5,43]='Docente';				Empleados_Matriz[6,43]='2300000';	Empleados_Matriz[7,43]='09/08/1990';	Empleados_Matriz[8,43]='07/06/1960';
Empleados_Matriz[0,44]='1724';			Empleados_Matriz[1,44]='Guerrero';		Empleados_Matriz[2,44]='Alexandra';	Empleados_Matriz[3,44]='Medellín';		Empleados_Matriz[4,44]='Diseño';			Empleados_Matriz[5,44]='Docente';				Empleados_Matriz[6,44]='2300000';	Empleados_Matriz[7,44]='10/02/1978';	Empleados_Matriz[8,44]='22/05/1954';
Empleados_Matriz[0,45]='1923';			Empleados_Matriz[1,45]='Guerra';		Empleados_Matriz[2,45]='Lisa';		Empleados_Matriz[3,45]='Medellín';		Empleados_Matriz[4,45]='Diseño';			Empleados_Matriz[5,45]='Docente';				Empleados_Matriz[6,45]='2300000';	Empleados_Matriz[7,45]='27/11/1986';	Empleados_Matriz[8,45]='07/03/1961';
Empleados_Matriz[0,46]='1794';			Empleados_Matriz[1,46]='Rodríguez ';	Empleados_Matriz[2,46]='Ana Maria';	Empleados_Matriz[3,46]='Medellín';		Empleados_Matriz[4,46]='Diseño';			Empleados_Matriz[5,46]='Docente';				Empleados_Matriz[6,46]='2300000';	Empleados_Matriz[7,46]='18/12/1984';	Empleados_Matriz[8,46]='18/10/1968';
Empleados_Matriz[0,47]='1558';			Empleados_Matriz[1,47]='Marulanda';		Empleados_Matriz[2,47]='Sofia';		Empleados_Matriz[3,47]='Medellín';		Empleados_Matriz[4,47]='Diseño';			Empleados_Matriz[5,47]='Docente';				Empleados_Matriz[6,47]='2300000';	Empleados_Matriz[7,47]='16/10/1982';	Empleados_Matriz[8,47]='26/09/1965';
Empleados_Matriz[0,48]='1949';			Empleados_Matriz[1,48]='Palacio';		Empleados_Matriz[2,48]='Paula';		Empleados_Matriz[3,48]='Medellín';		Empleados_Matriz[4,48]='Diseño';			Empleados_Matriz[5,48]='Docente';				Empleados_Matriz[6,48]='4100000';	Empleados_Matriz[7,48]='12/10/1981';	Empleados_Matriz[8,48]='26/02/1951';
Empleados_Matriz[0,49]='1311';			Empleados_Matriz[1,49]='Bermudez';		Empleados_Matriz[2,49]='Jesus';		Empleados_Matriz[3,49]='Medellín';		Empleados_Matriz[4,49]='Diseño';			Empleados_Matriz[5,49]='Docente';				Empleados_Matriz[6,49]='3800000';	Empleados_Matriz[7,49]='26/09/1986';	Empleados_Matriz[8,49]='13/11/1964';
Empleados_Matriz[0,50]='1906';			Empleados_Matriz[1,50]='Toledo';		Empleados_Matriz[2,50]='Roberta';	Empleados_Matriz[3,50]='Medellín';		Empleados_Matriz[4,50]='Diseño';			Empleados_Matriz[5,50]='Aux. Administrativo';	Empleados_Matriz[6,50]='1350000';	Empleados_Matriz[7,50]='28/09/1989';	Empleados_Matriz[8,50]='02/09/1960';
Empleados_Matriz[0,51]='1656';			Empleados_Matriz[1,51]='Arango';		Empleados_Matriz[2,51]='Tatiana';	Empleados_Matriz[3,51]='Medellín';		Empleados_Matriz[4,51]='Diseño';			Empleados_Matriz[5,51]='Administrativo';		Empleados_Matriz[6,51]='2500000';	Empleados_Matriz[7,51]='14/12/1987';	Empleados_Matriz[8,51]='29/09/1963';
Empleados_Matriz[0,52]='1907';			Empleados_Matriz[1,52]='Acevedo';		Empleados_Matriz[2,52]='Melina';	Empleados_Matriz[3,52]='Medellín';		Empleados_Matriz[4,52]='Diseño';			Empleados_Matriz[5,52]='Administrativo';		Empleados_Matriz[6,52]='2600000';	Empleados_Matriz[7,52]='20/09/1989';	Empleados_Matriz[8,52]='13/09/1960';
Empleados_Matriz[0,53]='1724';			Empleados_Matriz[1,53]='Cock';			Empleados_Matriz[2,53]='Cristina';	Empleados_Matriz[3,53]='Medellín';		Empleados_Matriz[4,53]='Diseño';			Empleados_Matriz[5,53]='Administrativo';		Empleados_Matriz[6,53]='2960000';	Empleados_Matriz[7,53]='29/07/1990';	Empleados_Matriz[8,53]='21/05/1965';
Empleados_Matriz[0,54]='1301';			Empleados_Matriz[1,54]='Casadiegos';	Empleados_Matriz[2,54]='Manuela';	Empleados_Matriz[3,54]='Medellín';		Empleados_Matriz[4,54]='Diseño';			Empleados_Matriz[5,54]='Aux. Administrativo';	Empleados_Matriz[6,54]='1350000';	Empleados_Matriz[7,54]='06/08/1984';	Empleados_Matriz[8,54]='25/06/1965';
Empleados_Matriz[0,55]='1292';			Empleados_Matriz[1,55]='Salamanca';		Empleados_Matriz[2,55]='Isabel';	Empleados_Matriz[3,55]='Medellín';		Empleados_Matriz[4,55]='Diseño';			Empleados_Matriz[5,55]='Administrativo';		Empleados_Matriz[6,55]='4350000';	Empleados_Matriz[7,55]='20/11/1987';	Empleados_Matriz[8,55]='18/04/1956';
Empleados_Matriz[0,56]='1167';			Empleados_Matriz[1,56]='Arango';		Empleados_Matriz[2,56]='Juan';		Empleados_Matriz[3,56]='Medellín';		Empleados_Matriz[4,56]='Diseño';			Empleados_Matriz[5,56]='Administrativo';		Empleados_Matriz[6,56]='5600000';	Empleados_Matriz[7,56]='18/04/1991';	Empleados_Matriz[8,56]='27/06/1970';
Empleados_Matriz[0,57]='1950';			Empleados_Matriz[1,57]='Granda';		Empleados_Matriz[2,57]='Luisa';		Empleados_Matriz[3,57]='Medellín';		Empleados_Matriz[4,57]='Diseño';			Empleados_Matriz[5,57]='Docente';				Empleados_Matriz[6,57]='4900000';	Empleados_Matriz[7,57]='04/10/1981';	Empleados_Matriz[8,57]='09/03/1951';
Empleados_Matriz[0,58]='1792';			Empleados_Matriz[1,58]='Arango ';		Empleados_Matriz[2,58]='Monica';	Empleados_Matriz[3,58]='Medellín';		Empleados_Matriz[4,58]='Diseño';			Empleados_Matriz[5,58]='Técnico';				Empleados_Matriz[6,58]='2000000';	Empleados_Matriz[7,58]='24/12/1990';	Empleados_Matriz[8,58]='03/10/1968';
Empleados_Matriz[0,59]='1977';			Empleados_Matriz[1,59]='Arroyave';		Empleados_Matriz[2,59]='Federico';	Empleados_Matriz[3,59]='Medellín';		Empleados_Matriz[4,59]='Diseño';			Empleados_Matriz[5,59]='Técnico';				Empleados_Matriz[6,59]='1300000';	Empleados_Matriz[7,59]='13/06/1980';	Empleados_Matriz[8,59]='15/09/1967';
Empleados_Matriz[0,60]='1067';			Empleados_Matriz[1,60]='Lemos';			Empleados_Matriz[2,60]='Dalia';		Empleados_Matriz[3,60]='Medellín';		Empleados_Matriz[4,60]='Diseño';			Empleados_Matriz[5,60]='Técnico';				Empleados_Matriz[6,60]='1100000';	Empleados_Matriz[7,60]='20/09/1987';	Empleados_Matriz[8,60]='30/09/1961';
Empleados_Matriz[0,61]='1976';			Empleados_Matriz[1,61]='Jaramillo';		Empleados_Matriz[2,61]='Ana';		Empleados_Matriz[3,61]='Medellín';		Empleados_Matriz[4,61]='Ingeniería';		Empleados_Matriz[5,61]='Aux. Administrativo';	Empleados_Matriz[6,61]='1350000';	Empleados_Matriz[7,61]='29/04/1991';	Empleados_Matriz[8,61]='09/10/1970';
Empleados_Matriz[0,62]='1168';			Empleados_Matriz[1,62]='Lema';			Empleados_Matriz[2,62]='Maria';		Empleados_Matriz[3,62]='Medellín';		Empleados_Matriz[4,62]='Ingeniería';		Empleados_Matriz[5,62]='Aux. Administrativo';	Empleados_Matriz[6,62]='1350000';	Empleados_Matriz[7,62]='10/04/1991';	Empleados_Matriz[8,62]='08/07/1970';
Empleados_Matriz[0,63]='1815';			Empleados_Matriz[1,63]='Caro';			Empleados_Matriz[2,63]='Diana';		Empleados_Matriz[3,63]='Medellín';		Empleados_Matriz[4,63]='Ingeniería';		Empleados_Matriz[5,63]='Administrativo';		Empleados_Matriz[6,63]='5600000';	Empleados_Matriz[7,63]='25/02/1980';	Empleados_Matriz[8,63]='28/08/1959';
Empleados_Matriz[0,64]='1068';			Empleados_Matriz[1,64]='Vergara';		Empleados_Matriz[2,64]='Amalia';	Empleados_Matriz[3,64]='Medellín';		Empleados_Matriz[4,64]='Ingeniería';		Empleados_Matriz[5,64]='Docente';				Empleados_Matriz[6,64]='3200000';	Empleados_Matriz[7,64]='12/09/1987';	Empleados_Matriz[8,64]='11/10/1961';
Empleados_Matriz[0,65]='1012';			Empleados_Matriz[1,65]='Duque';			Empleados_Matriz[2,65]='Julian';	Empleados_Matriz[3,65]='Medellín';		Empleados_Matriz[4,65]='Ingeniería';		Empleados_Matriz[5,65]='Docente';				Empleados_Matriz[6,65]='2400000';	Empleados_Matriz[7,65]='26/01/1986';	Empleados_Matriz[8,65]='02/12/1964';
Empleados_Matriz[0,66]='1301';			Empleados_Matriz[1,66]='Muñoz';			Empleados_Matriz[2,66]='Maritza';	Empleados_Matriz[3,66]='Medellín';		Empleados_Matriz[4,66]='Ingeniería';		Empleados_Matriz[5,66]='Docente';				Empleados_Matriz[6,66]='3200000';	Empleados_Matriz[7,66]='09/01/1986';	Empleados_Matriz[8,66]='28/09/1955';
Empleados_Matriz[0,67]='1556';			Empleados_Matriz[1,67]='Peláez';		Empleados_Matriz[2,67]='Andrés';	Empleados_Matriz[3,67]='Medellín';		Empleados_Matriz[4,67]='Ingeniería';		Empleados_Matriz[5,67]='Docente';				Empleados_Matriz[6,67]='3200000';	Empleados_Matriz[7,67]='26/11/1981';	Empleados_Matriz[8,67]='11/09/1965';
Empleados_Matriz[0,68]='1933';			Empleados_Matriz[1,68]='Sanchez';		Empleados_Matriz[2,68]='Miguel';	Empleados_Matriz[3,68]='Medellín';		Empleados_Matriz[4,68]='Ingeniería';		Empleados_Matriz[5,68]='Docente';				Empleados_Matriz[6,68]='3200000';	Empleados_Matriz[7,68]='08/01/1984';	Empleados_Matriz[8,68]='12/06/1949';
Empleados_Matriz[0,69]='1333';			Empleados_Matriz[1,69]='Cano';			Empleados_Matriz[2,69]='Carolina';	Empleados_Matriz[3,69]='Medellín';		Empleados_Matriz[4,69]='Ingeniería';		Empleados_Matriz[5,69]='Docente';				Empleados_Matriz[6,69]='3200000';	Empleados_Matriz[7,69]='16/04/1990';	Empleados_Matriz[8,69]='07/10/1965';
Empleados_Matriz[0,70]='1510';			Empleados_Matriz[1,70]='Marquez';		Empleados_Matriz[2,70]='Jessica';	Empleados_Matriz[3,70]='Medellín';		Empleados_Matriz[4,70]='Ingeniería';		Empleados_Matriz[5,70]='Docente';				Empleados_Matriz[6,70]='4800000';	Empleados_Matriz[7,70]='11/06/1985';	Empleados_Matriz[8,70]='04/11/1962';
Empleados_Matriz[0,71]='1574';			Empleados_Matriz[1,71]='Rico';			Empleados_Matriz[2,71]='Samuel';	Empleados_Matriz[3,71]='Medellín';		Empleados_Matriz[4,71]='Ingeniería';		Empleados_Matriz[5,71]='Docente';				Empleados_Matriz[6,71]='3200000';	Empleados_Matriz[7,71]='09/02/1986';	Empleados_Matriz[8,71]='04/06/1960';
Empleados_Matriz[0,72]='1360';			Empleados_Matriz[1,72]='Mendez';		Empleados_Matriz[2,72]='Gustavo';	Empleados_Matriz[3,72]='Medellín';		Empleados_Matriz[4,72]='Ingeniería';		Empleados_Matriz[5,72]='Docente';				Empleados_Matriz[6,72]='4000000';	Empleados_Matriz[7,72]='01/08/1988';	Empleados_Matriz[8,72]='18/06/1960';
Empleados_Matriz[0,73]='1293';			Empleados_Matriz[1,73]='Jimenez';		Empleados_Matriz[2,73]='Karina';	Empleados_Matriz[3,73]='Medellín';		Empleados_Matriz[4,73]='Ingeniería';		Empleados_Matriz[5,73]='Técnico';				Empleados_Matriz[6,73]='1700000';	Empleados_Matriz[7,73]='14/09/1984';	Empleados_Matriz[8,73]='25/08/1954';
Empleados_Matriz[0,74]='1329';			Empleados_Matriz[1,74]='Osorio';		Empleados_Matriz[2,74]='Julieth';	Empleados_Matriz[3,74]='Medellín';		Empleados_Matriz[4,74]='Medicina';			Empleados_Matriz[5,74]='Docente';				Empleados_Matriz[6,74]='3500000';	Empleados_Matriz[7,74]='22/02/1989';	Empleados_Matriz[8,74]='06/05/1964';
Empleados_Matriz[0,75]='1572';			Empleados_Matriz[1,75]='Villamizar';	Empleados_Matriz[2,75]='Lina';		Empleados_Matriz[3,75]='Medellín';		Empleados_Matriz[4,75]='Medicina';			Empleados_Matriz[5,75]='Docente';				Empleados_Matriz[6,75]='3600000';	Empleados_Matriz[7,75]='15/07/1988';	Empleados_Matriz[8,75]='20/05/1960';
Empleados_Matriz[0,76]='1300';			Empleados_Matriz[1,76]='Gomez';			Empleados_Matriz[2,76]='Carlos';	Empleados_Matriz[3,76]='Medellín';		Empleados_Matriz[4,76]='Medicina';			Empleados_Matriz[5,76]='Administrativo';		Empleados_Matriz[6,76]='2300000';	Empleados_Matriz[7,76]='13/12/1989';	Empleados_Matriz[8,76]='24/09/1965';
Empleados_Matriz[0,77]='1557';			Empleados_Matriz[1,77]='Gracía';		Empleados_Matriz[2,77]='Simón';		Empleados_Matriz[3,77]='Medellín';		Empleados_Matriz[4,77]='Medicina';			Empleados_Matriz[5,77]='Aux. Administrativo';	Empleados_Matriz[6,77]='1390000';	Empleados_Matriz[7,77]='18/11/1981';	Empleados_Matriz[8,77]='22/09/1965';
Empleados_Matriz[0,78]='1169';			Empleados_Matriz[1,78]='Castro';		Empleados_Matriz[2,78]='Monica';	Empleados_Matriz[3,78]='Medellín';		Empleados_Matriz[4,78]='Medicina';			Empleados_Matriz[5,78]='Administrativo';		Empleados_Matriz[6,78]='5700000';	Empleados_Matriz[7,78]='13/10/1992';	Empleados_Matriz[8,78]='12/07/1970';
Empleados_Matriz[0,79]='1758';			Empleados_Matriz[1,79]='Uribe';			Empleados_Matriz[2,79]='Melisa';	Empleados_Matriz[3,79]='Medellín';		Empleados_Matriz[4,79]='Medicina';			Empleados_Matriz[5,79]='Técnico';				Empleados_Matriz[6,79]='1900000';	Empleados_Matriz[7,79]='18/03/1982';	Empleados_Matriz[8,79]='23/10/1962';
Empleados_Matriz[0,80]='1310';			Empleados_Matriz[1,80]='Florez';		Empleados_Matriz[2,80]='Alejandra';	Empleados_Matriz[3,80]='Medellín';		Empleados_Matriz[4,80]='Medicina';			Empleados_Matriz[5,80]='Técnico';				Empleados_Matriz[6,80]='1350000';	Empleados_Matriz[7,80]='04/10/1986';	Empleados_Matriz[8,80]='02/11/1964';
Empleados_Matriz[0,81]='1041';			Empleados_Matriz[1,81]='Gutierrez';		Empleados_Matriz[2,81]='Amalia';	Empleados_Matriz[3,81]='Medellín';		Empleados_Matriz[4,81]='Medicina';			Empleados_Matriz[5,81]='Docente';				Empleados_Matriz[6,81]='4900000';	Empleados_Matriz[7,81]='16/04/1992';	Empleados_Matriz[8,81]='25/01/1965';
Empleados_Matriz[0,82]='1361';			Empleados_Matriz[1,82]='Medina';		Empleados_Matriz[2,82]='Raquel';	Empleados_Matriz[3,82]='Medellín';		Empleados_Matriz[4,82]='Medicina';			Empleados_Matriz[5,82]='Docente';				Empleados_Matriz[6,82]='2940000';	Empleados_Matriz[7,82]='22/07/1988';	Empleados_Matriz[8,82]='22/06/1960';
Empleados_Matriz[0,83]='1793';			Empleados_Matriz[1,83]='Betancur';		Empleados_Matriz[2,83]='Gonzalo';	Empleados_Matriz[3,83]='Bucaramanga';	Empleados_Matriz[4,83]='Administración';	Empleados_Matriz[5,83]='Docente';				Empleados_Matriz[6,83]='1350000';	Empleados_Matriz[7,83]='16/12/1990';	Empleados_Matriz[8,83]='14/10/1968';
Empleados_Matriz[0,84]='1967';			Empleados_Matriz[1,84]='Betancurt';		Empleados_Matriz[2,84]='Santiago';	Empleados_Matriz[3,84]='Bucaramanga';	Empleados_Matriz[4,84]='Administración';	Empleados_Matriz[5,84]='Aux. Administrativo';	Empleados_Matriz[6,84]='1350000';	Empleados_Matriz[7,84]='09/11/1991';	Empleados_Matriz[8,84]='15/05/1969';
Empleados_Matriz[0,85]='1725';			Empleados_Matriz[1,85]='Marquez';		Empleados_Matriz[2,85]='Isabella';	Empleados_Matriz[3,85]='Bucaramanga';	Empleados_Matriz[4,85]='Administración';	Empleados_Matriz[5,85]='Administrativo';		Empleados_Matriz[6,85]='5600000';	Empleados_Matriz[7,85]='12/02/1978';	Empleados_Matriz[8,85]='26/05/1955';
Empleados_Matriz[0,86]='1969';			Empleados_Matriz[1,86]='Molina';		Empleados_Matriz[2,86]='Karla';		Empleados_Matriz[3,86]='Bucaramanga';	Empleados_Matriz[4,86]='Administración';	Empleados_Matriz[5,86]='Aux. Técnico';			Empleados_Matriz[6,86]='980000';	Empleados_Matriz[7,86]='14/04/1989';	Empleados_Matriz[8,86]='02/10/1951';
Empleados_Matriz[0,87]='1962';			Empleados_Matriz[1,87]='Rodriguez';		Empleados_Matriz[2,87]='Hilda';		Empleados_Matriz[3,87]='Bucaramanga';	Empleados_Matriz[4,87]='Administración';	Empleados_Matriz[5,87]='Docente';				Empleados_Matriz[6,87]='2900000';	Empleados_Matriz[7,87]='22/10/1987';	Empleados_Matriz[8,87]='06/04/1945';
Empleados_Matriz[0,88]='1967';			Empleados_Matriz[1,88]='Hincapie';		Empleados_Matriz[2,88]='Victoria';	Empleados_Matriz[3,88]='Bucaramanga';	Empleados_Matriz[4,88]='Administración';	Empleados_Matriz[5,88]='Docente';				Empleados_Matriz[6,88]='4600000';	Empleados_Matriz[7,88]='13/04/1982';	Empleados_Matriz[8,88]='17/09/1951';
Empleados_Matriz[0,89]='1426';			Empleados_Matriz[1,89]='Rojas ';		Empleados_Matriz[2,89]='Pablo';		Empleados_Matriz[3,89]='Bucaramanga';	Empleados_Matriz[4,89]='Administración';	Empleados_Matriz[5,89]='Docente';				Empleados_Matriz[6,89]='5600000';	Empleados_Matriz[7,89]='08/09/1977';	Empleados_Matriz[8,89]='09/03/1968';
Empleados_Matriz[0,90]='1509';			Empleados_Matriz[1,90]='Serna';			Empleados_Matriz[2,90]='Pamela';	Empleados_Matriz[3,90]='Bucaramanga';	Empleados_Matriz[4,90]='Ingeniería';		Empleados_Matriz[5,90]='Aux. Administrativo';	Empleados_Matriz[6,90]='1350000';	Empleados_Matriz[7,90]='19/06/1985';	Empleados_Matriz[8,90]='24/10/1962';
Empleados_Matriz[0,91]='1673';			Empleados_Matriz[1,91]='Zapata';		Empleados_Matriz[2,91]='Stepania';	Empleados_Matriz[3,91]='Bucaramanga';	Empleados_Matriz[4,91]='Ingeniería';		Empleados_Matriz[5,91]='Docente';				Empleados_Matriz[6,91]='1350000';	Empleados_Matriz[7,91]='16/04/1990';	Empleados_Matriz[8,91]='01/09/1962';
Empleados_Matriz[0,92]='1352';			Empleados_Matriz[1,92]='Toro';			Empleados_Matriz[2,92]='Manuel';	Empleados_Matriz[3,92]='Bucaramanga';	Empleados_Matriz[4,92]='Ingeniería';		Empleados_Matriz[5,92]='Docente';				Empleados_Matriz[6,92]='1980000';	Empleados_Matriz[7,92]='18/09/1982';	Empleados_Matriz[8,92]='22/07/1958';
Empleados_Matriz[0,93]='1922';			Empleados_Matriz[1,93]='Henao';			Empleados_Matriz[2,93]='Barbara';	Empleados_Matriz[3,93]='Bucaramanga';	Empleados_Matriz[4,93]='Ingeniería';		Empleados_Matriz[5,93]='Docente';				Empleados_Matriz[6,93]='2100000';	Empleados_Matriz[7,93]='05/12/1986';	Empleados_Matriz[8,93]='24/02/1961';
Empleados_Matriz[0,94]='1518';			Empleados_Matriz[1,94]='Vasquez';		Empleados_Matriz[2,94]='Leonardo';	Empleados_Matriz[3,94]='Bucaramanga';	Empleados_Matriz[4,94]='Ingeniería';		Empleados_Matriz[5,94]='Docente';				Empleados_Matriz[6,94]='2600000';	Empleados_Matriz[7,94]='18/06/1990';	Empleados_Matriz[8,94]='11/07/1963';
Empleados_Matriz[0,95]='1331';			Empleados_Matriz[1,95]='Castrillón';	Empleados_Matriz[2,95]='Juliana';	Empleados_Matriz[3,95]='Bucaramanga';	Empleados_Matriz[4,95]='Ingeniería';		Empleados_Matriz[5,95]='Docente';				Empleados_Matriz[6,95]='3100000';	Empleados_Matriz[7,95]='11/05/1989';	Empleados_Matriz[8,95]='21/05/1964';
Empleados_Matriz[0,96]='1303';			Empleados_Matriz[1,96]='Lopez';			Empleados_Matriz[2,96]='Dinara';	Empleados_Matriz[3,96]='Bucaramanga';	Empleados_Matriz[4,96]='Ingeniería';		Empleados_Matriz[5,96]='Administrativo';		Empleados_Matriz[6,96]='5600000';	Empleados_Matriz[7,96]='03/03/1988';	Empleados_Matriz[8,96]='10/07/1955';
Empleados_Matriz[0,97]='1302';			Empleados_Matriz[1,97]='Mota';			Empleados_Matriz[2,97]='Elisa';		Empleados_Matriz[3,97]='Bucaramanga';	Empleados_Matriz[4,97]='Ingeniería';		Empleados_Matriz[5,97]='Docente';				Empleados_Matriz[6,97]='3800000';	Empleados_Matriz[7,97]='29/07/1984';	Empleados_Matriz[8,97]='06/07/1955';
Empleados_Matriz[0,98]='1334';			Empleados_Matriz[1,98]='Perez';			Empleados_Matriz[2,98]='Alicia';	Empleados_Matriz[3,98]='Bucaramanga';	Empleados_Matriz[4,98]='Ingeniería';		Empleados_Matriz[5,98]='Aux. Administrativo';	Empleados_Matriz[6,98]='1350000';	Empleados_Matriz[7,98]='08/04/1990';	Empleados_Matriz[8,98]='18/10/1965';
Empleados_Matriz[0,99]='1975';			Empleados_Matriz[1,99]='Posada';		Empleados_Matriz[2,99]='Carlos';	Empleados_Matriz[3,99]='Bogotá';		Empleados_Matriz[4,99]='Derecho';			Empleados_Matriz[5,99]='Docente';				Empleados_Matriz[6,99]='3200000';	Empleados_Matriz[7,99]='07/05/1991';	Empleados_Matriz[8,99]='28/09/1970';
Empleados_Matriz[0,100] ='1759';		Empleados_Matriz[1,100] ='Arango';		Empleados_Matriz[2,100] ='Mauricio';Empleados_Matriz[3,100] ='Bogotá';		Empleados_Matriz[4,100] ='Derecho';			Empleados_Matriz[5,100] ='Docente';				Empleados_Matriz[6,100] ='4700000';	Empleados_Matriz[7,100] ='10/03/1982';	Empleados_Matriz[8,100] ='03/11/1962';
Empleados_Matriz[0,101] ='1055';		Empleados_Matriz[1,101] ='Hoyos';		Empleados_Matriz[2,101] ='Adriana';	Empleados_Matriz[3,101] ='Bogotá';		Empleados_Matriz[4,101] ='Derecho';			Empleados_Matriz[5,101] ='Docente';				Empleados_Matriz[6,101] ='3200000';	Empleados_Matriz[7,101] ='08/04/1991';	Empleados_Matriz[8,101] ='20/08/1967';
Empleados_Matriz[0,102] ='1054';		Empleados_Matriz[1,102] ='Suarez';		Empleados_Matriz[2,102] ='Miguel';	Empleados_Matriz[3,102] ='Bogotá';		Empleados_Matriz[4,102] ='Derecho';			Empleados_Matriz[5,102] ='Docente investigador';Empleados_Matriz[6,102] ='4100000';	Empleados_Matriz[7,102] ='16/04/1991';	Empleados_Matriz[8,102] ='09/08/1967';
Empleados_Matriz[0,103] ='1075';		Empleados_Matriz[1,103] ='Aristizabal';	Empleados_Matriz[2,103] ='Natalia';	Empleados_Matriz[3,103] ='Bogotá';		Empleados_Matriz[4,103] ='Derecho';			Empleados_Matriz[5,103] ='Docente investigador';Empleados_Matriz[6,103] ='3200000';	Empleados_Matriz[7,103] ='07/08/1992';	Empleados_Matriz[8,103] ='28/08/1969';
Empleados_Matriz[0,104] ='1966';		Empleados_Matriz[1,104]='Dominguez ';	Empleados_Matriz[2,104] ='Camila';	Empleados_Matriz[3,104] ='Bogotá';		Empleados_Matriz[4,104] ='Derecho';			Empleados_Matriz[5,104] ='Docente investigador';Empleados_Matriz[6,104] ='3900000';	Empleados_Matriz[7,104] ='17/11/1991';	Empleados_Matriz[8,104] ='04/05/1969';
Empleados_Matriz[0,105] ='1354';		Empleados_Matriz[1,105] ='Ruiz';		Empleados_Matriz[2,105] ='Susana';	Empleados_Matriz[3,105] ='Bogotá';		Empleados_Matriz[4,105] ='Derecho';			Empleados_Matriz[5,105] ='Administrativo';		Empleados_Matriz[6,105] ='3200000';	Empleados_Matriz[7,105] ='06/05/1986';	Empleados_Matriz[8,105] ='06/08/1948';
Empleados_Matriz[0,106] ='1696';		Empleados_Matriz[1,106] ='Higuita';		Empleados_Matriz[2,106] ='Cathy';	Empleados_Matriz[3,106] ='Bogotá';		Empleados_Matriz[4,106] ='Derecho';			Empleados_Matriz[5,106] ='Docente';				Empleados_Matriz[6,106] ='3200000';	Empleados_Matriz[7,106] ='12/10/1984';	Empleados_Matriz[8,106] ='16/01/1940';
Empleados_Matriz[0,107] ='1299';		Empleados_Matriz[1,107] ='Osorio';		Empleados_Matriz[2,107] ='Catalina';Empleados_Matriz[3,107] ='Bogotá';		Empleados_Matriz[4,107] ='Derecho';			Empleados_Matriz[5,107] ='Docente';				Empleados_Matriz[6,107] ='3200000';	Empleados_Matriz[7,107] ='21/12/1989';	Empleados_Matriz[8,107] ='13/09/1965';
Empleados_Matriz[0,108] ='1529';		Empleados_Matriz[1,108] ='Gomez';		Empleados_Matriz[2,108] ='Mariana';	Empleados_Matriz[3,108] ='Bogotá';		Empleados_Matriz[4,108] ='Publicidad';		Empleados_Matriz[5,108] ='Docente';				Empleados_Matriz[6,108] ='3200000';	Empleados_Matriz[7,108] ='28/01/1987';	Empleados_Matriz[8,108] ='04/01/1967';
Empleados_Matriz[0,109] ='1080';		Empleados_Matriz[1,109] ='Bustos';		Empleados_Matriz[2,109] ='Jacobo';	Empleados_Matriz[3,109] ='Bogotá';		Empleados_Matriz[4,109] ='Publicidad';		Empleados_Matriz[5,109] ='Docente investigador';Empleados_Matriz[6,109] ='3700000';	Empleados_Matriz[7,109] ='29/10/1988';	Empleados_Matriz[8,109] ='06/12/1952';
Empleados_Matriz[0,110] ='1353';		Empleados_Matriz[1,110] ='Rodas';		Empleados_Matriz[2,110] ='Gabriel';	Empleados_Matriz[3,110] ='Bogotá';		Empleados_Matriz[4,110] ='Publicidad';		Empleados_Matriz[5,110] ='Docente investigador';Empleados_Matriz[6,110] ='3600000';	Empleados_Matriz[7,110] ='10/09/1982';	Empleados_Matriz[8,110] ='02/08/1958';
Empleados_Matriz[0,111] ='1369';		Empleados_Matriz[1,111] ='Cano';		Empleados_Matriz[2,111] ='Sandra';	Empleados_Matriz[3,111] ='Bogotá';		Empleados_Matriz[4,111] ='Publicidad';		Empleados_Matriz[5,111] ='Administrativo';		Empleados_Matriz[6,111] ='4200000';	Empleados_Matriz[7,111] ='03/03/1983';	Empleados_Matriz[8,111] ='19/05/1959';
Empleados_Matriz[0,112] ='1370';		Empleados_Matriz[1,112] ='Diaz ';		Empleados_Matriz[2,112] ='Evelyn';	Empleados_Matriz[3,112] ='Bogotá';		Empleados_Matriz[4,112] ='Publicidad';		Empleados_Matriz[5,112] ='Docente investigador';Empleados_Matriz[6,112] ='3600000';	Empleados_Matriz[7,112] ='27/11/1987';	Empleados_Matriz[8,112] ='23/05/1959';
Empleados_Matriz[0,113] ='1677';		Empleados_Matriz[1,113] ='Hernandez ';	Empleados_Matriz[2,113] ='Juan';	Empleados_Matriz[3,113] ='Bogotá';		Empleados_Matriz[4,113] ='Publicidad';		Empleados_Matriz[5,113] ='Docente investigador';Empleados_Matriz[6,113] ='3700000';	Empleados_Matriz[7,113] ='06/11/1987';	Empleados_Matriz[8,113] ='16/09/1969';
Empleados_Matriz[0,114] ='1427';		Empleados_Matriz[1,114] ='Jaramillo';	Empleados_Matriz[2,114] ='David';	Empleados_Matriz[3,114] ='Bogotá';		Empleados_Matriz[4,114] ='Publicidad';		Empleados_Matriz[5,114] ='Docente investigador';Empleados_Matriz[6,114] ='3400000';	Empleados_Matriz[7,114] ='31/08/1977';	Empleados_Matriz[8,114] ='19/03/1958';
	Repetir
		
			// mostrar menu
			Limpiar Pantalla;
			Escribir "MENU PRINCIPAL";
			Escribir "";
			Escribir "1. Gestión de Empleados.";
			Escribir "2. Liquidación de Empleados";
			Escribir "";
			// ingresar una opcion
			Escribir "Elija la opcion a procesar (1/2): ";
			Leer Opcion_menu;
			Escribir "";				
			Segun Opcion_menu Hacer
				1: 
							Escribir "¿QUE DESEAR HACER?";
							Escribir "";
							Escribir "1. Listar todos los empleados"; 
							Escribir "2. Buscar un empleado";
							Escribir "3. Agregar un empleado";
							Escribir "4. Eliminar un empleado";
							Escribir "5. Actualizar un empleado";
							Escribir "6. Volver al menú principal";
							Escribir "";
							Escribir "Elija la opcion a procesar (1/6): ";
							Leer opcion_empleado;
					// procesar esa opción
						Segun opcion_empleado hacer	
							1: 
								para i=0 hasta filas-1 con paso 1 hacer
								Escribir Empleados_Matriz[0,i]," "," ",Empleados_Matriz[1,i]," "," - ",Empleados_Matriz[2,i]," "," : ",Empleados_Matriz[3,i]," "," - ",Empleados_Matriz[4,i]," - ",Empleados_Matriz[5,i]," - ",Empleados_Matriz[6,i]," - ",Empleados_Matriz[7,i]," "," ";
								FinPara
							2:  
								Escribir "con que columna desea buscar?";
								Escribir "1. Id Empleado";
								Escribir "2. Apellido";
								Escribir "3. Empleado";
								Escribir "4. Seccional";
								Escribir "5. Facultad";
								Escribir "6. Cargo";
								Escribir "";
								Escribir "Elija la opcion a procesar (1/6): ";
								Leer opcion_buscar;
								Limpiar Pantalla;
								Segun opcion_buscar hacer
									1: 	
										//CODIGO PARA BUSCAR POR EL ID 
									Mientras encontrado=Falso Hacer
										Escribir "Digite el id del empleado";
										Leer id;
										Para i=1 hasta filas-1 Con Paso 1 Hacer
											si id=ConvertirANumero(Empleados_Matriz[0,i]) Entonces
												encontrado=Verdadero;
												Escribir " El id digitado pertenece al empleado: ",Empleados_Matriz[0,i],"  ",Empleados_Matriz[1,i]," ",Empleados_Matriz[2,i]," de: ",Empleados_Matriz[3,i],", en la facultad de: ",Empleados_Matriz[4,i],", Cargo: ",Empleados_Matriz[5,i],".";
											FinSi
										FinPara
									FinMientras
								2:
									//CODIGO PARA BUSCAR POR EL APELLIDO
									Mientras encontrado=Falso Hacer
										Escribir "Digite el Apellido del empleado";
										Leer apellido;
										Para i=1 hasta filas-1 Con Paso 1 Hacer
											si apellido=Empleados_Matriz[1,i] Entonces
												encontrado=Verdadero;
												Escribir  " El Apellido digitado pertenece al empleado: ",Empleados_Matriz[0,i]," ",Empleados_Matriz[1,i]," ",Empleados_Matriz[2,i]," de: ",Empleados_Matriz[3,i],", en la facultad de: ",Empleados_Matriz[4,i],", Cargo: ",Empleados_Matriz[5,i],".";
											FinSi
										FinPara
									FinMientras
								3:
									//CODIGO PARA BUSCAR POR EL NOMBRE
									Mientras encontrado=Falso Hacer
										Escribir "Digite el Nombre del empleado";
										Leer empleado;
										Para i=1 hasta filas-1 Con Paso 1 Hacer
											si empleado=Empleados_Matriz[2,i] Entonces
												encontrado=Verdadero;
												Escribir  " El Nombre digitado pertenece al empleado: ",Empleados_Matriz[0,i]," ",Empleados_Matriz[1,i]," ",Empleados_Matriz[2,i]," de: ",Empleados_Matriz[3,i],", en la facultad de: ",Empleados_Matriz[4,i],", Cargo: ",Empleados_Matriz[5,i],".";
											FinSi
										FinPara
									FinMientras
								4:
									//CODIGO PARA BUSCAR POR LA CIUDAD
									Mientras encontrado=Falso Hacer
										Escribir "Digite la Seccional o ciudad del empleado";
										Leer seccional;
										Para i=1 hasta filas-1 Con Paso 1 Hacer
											si seccional=Empleados_Matriz[3,i] Entonces
												encontrado=Verdadero;
												Escribir  " en la seccional digitada habitan: ",Empleados_Matriz[0,i]," ",Empleados_Matriz[1,i]," ",Empleados_Matriz[2,i]," de: ",Empleados_Matriz[3,i],", en la facultad de: ",Empleados_Matriz[4,i],", Cargo: ",Empleados_Matriz[5,i],".";
											FinSi
										FinPara
									FinMientras
								5:
									//CODIGO PARA BUSCAR POR LA FACULTAD
									Mientras encontrado=Falso Hacer
										Escribir "Digite la Facultad de los empleado";
										Leer facultad;
										Para i=1 hasta filas-1 Con Paso 1 Hacer
											si facultad=Empleados_Matriz[4,i] Entonces
												encontrado=Verdadero;
												Escribir  " en la facultad digitada  estan: ",Empleados_Matriz[0,i]," ",Empleados_Matriz[1,i]," ",Empleados_Matriz[2,i]," de: ",Empleados_Matriz[3,i],", en la facultad de: ",Empleados_Matriz[4,i],", Cargo: ",Empleados_Matriz[5,i],".";
											FinSi
										FinPara
									FinMientras
								6:
									//CODIGO PARA BUSCAR POR EL CARGO
									Mientras encontrado=Falso Hacer
										Escribir "Digite el Cargo del empleado";
										Leer cargo;
										Para i=6 hasta filas-1 Con Paso 1 Hacer
											si cargo=Empleados_Matriz[5,i] Entonces
												encontrado=Verdadero;
												Escribir  " El Cargo digitado pertenece a los empleados: ",Empleados_Matriz[0,i]," ",Empleados_Matriz[1,i]," ",Empleados_Matriz[2,i]," de: ",Empleados_Matriz[3,i],", en la facultad de: ",Empleados_Matriz[4,i],", Cargo: ",Empleados_Matriz[5,i],".";
											FinSi
										FinPara
									FinMientras
								FinSegun	
						FinSegun
				2:
					Escribir "1. Bonificación Empleados";
					Escribir "2. Liquidación Empleados";
					Escribir "";
					Escribir "Elija la opcion a procesar (1/2): ";
					Leer opcion_liquidacion;
					
					Segun opcion_liquidacion hacer
						1:
							Mientras encontrado=Falso Hacer
								Escribir "Digite el id del empleado";
								Leer id;
								Para i=1 hasta filas-1 Con Paso 1 Hacer
									si id=ConvertirANumero(Empleados_Matriz[0,i]) Entonces
										encontrado=Verdadero;
										Escribir " El id digitado pertenece al empleado: ",Empleados_Matriz[1,i]," ",Empleados_Matriz[2,i]," de: ",Empleados_Matriz[3,i],".";
//										edad= fecha_actual-ConvertirANumero (Empleados_Matriz[7,i]);
//										bonificacion=edad;
//										
//										si edad >45 entonces
//											
//										FinSi
									FinSi
								FinPara
							FinMientras
						2:
							Mientras encontrado=Falso Hacer
								Escribir "Digite el id del empleado";
								Leer id;
								Para i=1 hasta filas-1 Con Paso 1 Hacer
									si id=ConvertirANumero(Empleados_Matriz[0,i]) Entonces
										encontrado=Verdadero;
										Escribir " El id digitado pertenece al empleado: ",Empleados_Matriz[1,i]," ",Empleados_Matriz[2,i]," de: ",Empleados_Matriz[3,i],".";
									FinSi
								FinPara
							FinMientras
							
					FinSegun
				De otro modo:
					Escribir "Opción no válida";
			FinSegun
			Escribir "";
			Escribir  "presione enter para volver al menu";
			Esperar Tecla;
		Hasta Que Opcion_menu=6;
FinProceso