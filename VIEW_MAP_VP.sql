select distinct `p`.`id` AS `UNIKALUS_NR`,
		`p`.`name` AS `Pavadinimas`,
		cast(`c29`.`value` as char(255) charset utf8) AS `Nuorodos`,
		cast(`c_name`.`name` as char(255) charset utf8) AS `Tema`, 
		cast(`c56`.`value` as unsigned) AS `Tema_ID`,
		cast(`c17`.`value` as char(255) charset utf8) AS `Projekto_aprasymas`,
		cast(`c1`.`value` as char(255) charset utf8) AS `Busena`,
		cast(`c9`.`value` as char(255) charset utf8) AS `Igyvend_NUO`,
		cast(`c10`.`value` as char(255) charset utf8) AS `Igyvend_IKI`,
		cast(`c23`.`value` as char(255) charset utf8) AS `Finans_sutarties_data`,
		cast(`c18`.`value` as char(255) charset utf8) AS `Statusas`,
		cast(replace(replace(replace(format(`c12`.`value`,2),',',':'),'.',','),':','.') as char(255) charset utf8) AS `Projekto_verte`,
		cast(replace(replace(replace(format(`c19`.`value`,2),',',':'),'.',','),':','.') as char(255) charset utf8) AS `ES_investicijos`,
		cast(replace(replace(replace(format(`c20`.`value`,2),',',':'),'.',','),':','.') as char(255) charset utf8) AS  `Savivaldybes_biudzeto_lesos`,
		cast(replace(replace(replace(format(`c21`.`value`,2),',',':'),'.',','),':','.') as char(255) charset utf8) AS `Valstybes_biudzeto_lesos`,
		cast(replace(replace(replace(format(`c30`.`value`,2),',',':'),'.',','),':','.') as char(255) charset utf8) AS `Privacios_lesos`,
		cast(replace(replace(replace(format(`c22`.`value`,2),',',':'),'.',','),':','.') as char(255) charset utf8) AS `Kitos_viesosios_lesos`,
		cast(`c53`.`value` as char(255) charset utf8) AS `Programa`,
		cast(`c15`.`value` as char(255) charset utf8) AS `Vykdytojas`,
		cast(`c5`.`value` as char(255) charset utf8) AS `Veiksmo_nr_ITVP`,
		cast(`c27`.`value` as char(255) charset utf8) AS `Priemone`,
		concat(`u1`.`firstname`,' ',`u1`.`lastname`) AS `Projekto_vadovas`,
		concat(`u2`.`firstname`,' ',`u2`.`lastname`) AS `IPVS_koordinatorius`,
		concat(`u3`.`firstname`,' ',`u3`.`lastname`) AS `Prieziuros_komiteto_pirm`,
		cast(`c11`.`value` as char(255) charset utf8) AS `Asignavimu_valdytojas`,
		cast(`c15`.`value` as char(255) charset utf8) AS `Projekto_vykdytojas`,
		cast(`c16`.`value` as char(255) charset utf8) AS `Projekto_partneris`,
		cast(`c28`.`value` as char(255) charset utf8) AS `Kontaktai`,
		cast(`c4`.`value` as char(255) charset utf8) AS `Nuoroda_finans_salygu_aprasa`,
		cast(`c13`.`value` as char(255) charset utf8) AS `Atvaizdavimas_zemelapyje`,
		cast(`c25`.`value` as char(255) charset utf8) AS `Metai_menuo`,
		cast(`c40`.`value` as char(255) charset utf8) AS `Nuoroda_i_projekta` 
from (((((((((((((((((((((((((((((((((`projects` `p` 
									  left join `custom_values` `c1` on(((`c1`.`customized_id` = `p`.`id`) and (`c1`.`custom_field_id` = 1)))) 
									 left join `custom_values` `c2` on(((`c2`.`customized_id` = `p`.`id`) and (`c2`.`custom_field_id` = 2)))) 
									left join `custom_values` `c53` on(((`c53`.`customized_id` = `p`.`id`) and (`c53`.`custom_field_id` = 53)))) 
								   left join `custom_values` `c4` on(((`c4`.`customized_id` = `p`.`id`) and (`c4`.`custom_field_id` = 4)))) 
								  left join `custom_values` `c5` on(((`c5`.`customized_id` = `p`.`id`) and (`c5`.`custom_field_id` = 5)))) 
								 left join `custom_values` `c6` on(((`c6`.`customized_id` = `p`.`id`) and (`c6`.`custom_field_id` = 6)))) 
								left join `custom_values` `c7` on(((`c7`.`customized_id` = `p`.`id`) and (`c7`.`custom_field_id` = 7)))) 
							   left join `custom_values` `c8` on(((`c8`.`customized_id` = `p`.`id`) and (`c8`.`custom_field_id` = 8))))
							  left join `custom_values` `c9` on(((`c9`.`customized_id` = `p`.`id`) and (`c9`.`custom_field_id` = 9)))) 
							 left join `custom_values` `c10` on(((`c10`.`customized_id` = `p`.`id`) and (`c10`.`custom_field_id` = 10))))
							left join `custom_values` `c11` on(((`c11`.`customized_id` = `p`.`id`) and (`c11`.`custom_field_id` = 11)))) 
						   left join `custom_values` `c12` on(((`c12`.`customized_id` = `p`.`id`) and (`c12`.`custom_field_id` = 12))))
						  left join `custom_values` `c13` on(((`c13`.`customized_id` = `p`.`id`) and (`c13`.`custom_field_id` = 13)))) 
						 left join `custom_values` `c15` on(((`c15`.`customized_id` = `p`.`id`) and (`c15`.`custom_field_id` = 15)))) 
						left join `custom_values` `c16` on(((`c16`.`customized_id` = `p`.`id`) and (`c16`.`custom_field_id` = 16)))) 
					   left join `custom_values` `c17` on(((`c17`.`customized_id` = `p`.`id`) and (`c17`.`custom_field_id` = 17)))) 
					  left join `custom_values` `c18` on(((`c18`.`customized_id` = `p`.`id`) and (`c18`.`custom_field_id` = 18)))) 
					 left join `custom_values` `c19` on(((`c19`.`customized_id` = `p`.`id`) and (`c19`.`custom_field_id` = 19)))) 
					left join `custom_values` `c20` on(((`c20`.`customized_id` = `p`.`id`) and (`c20`.`custom_field_id` = 20)))) 
				   left join `custom_values` `c21` on(((`c21`.`customized_id` = `p`.`id`) and (`c21`.`custom_field_id` = 21)))) 
				  left join `custom_values` `c22` on(((`c22`.`customized_id` = `p`.`id`) and (`c22`.`custom_field_id` = 22)))) 
				 left join `custom_values` `c23` on(((`c23`.`customized_id` = `p`.`id`) and (`c23`.`custom_field_id` = 23)))) 
				left join `custom_values` `c25` on(((`c25`.`customized_id` = `p`.`id`) and (`c25`.`custom_field_id` = 25)))) 
			   left join `custom_values` `c27` on(((`c27`.`customized_id` = `p`.`id`) and (`c27`.`custom_field_id` = 27)))) 
			  left join `custom_values` `c28` on(((`c28`.`customized_id` = `p`.`id`) and (`c28`.`custom_field_id` = 28)))) 
			 left join `custom_values` `c29` on(((`c29`.`customized_id` = `p`.`id`) and (`c29`.`custom_field_id` = 29)))) 
			left join `custom_values` `c30` on(((`c30`.`customized_id` = `p`.`id`) and (`c30`.`custom_field_id` = 30)))) 
		   left join `custom_values` `c40` on(((`c40`.`customized_id` = `p`.`id`) and (`c40`.`custom_field_id` = 40)))) 
		  left join `custom_values` `c56` on(((`c56`.`customized_id` = `p`.`id`) and (`c56`.`custom_field_id` = 56)))) 
		 left join `custom_field_enumerations` `c_name` on(((`c_name`.`id` = `c56`.`value`) and (`c_name`.`custom_field_id` = 56)))) 
		left join `users` `u1` on((`u1`.`id` = `c6`.`value`))) 
	   left join `users` `u2` on((`u2`.`id` = `c8`.`value`)))
	  left join `users` `u3` on((`u3`.`id` = `c7`.`value`))) where (`p`.`status` < 5)
