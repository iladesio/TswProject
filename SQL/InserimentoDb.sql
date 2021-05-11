use dbprogettotsw;
/*
insert into Indirizzo(ID,Via,Cap,Citta) values ();
insert into Indirizzo(ID,Via,Cap,Citta) values ();
insert into Indirizzo(ID,Via,Cap,Citta) values ();
*/

insert into Utente(ID,Nome,Cognome,CF,Email,Cellulare,Tipologia,NumeroOrdini,Pwsd) values ("becca12","Rebecca","Di Matteo","DMTRCC00A0G1","Beccadimatteoo@gmail.com","3894685921","registrato",0,"becca123");



insert into Produttore(PartitaIva,Nome) values ("34565678THK","Francesco De Rosa");
insert into Produttore(PartitaIva,Nome) values ("567493024TW","Rita Rossetti");
insert into Produttore(PartitaIva,Nome) values ("34567009SWS","Giulia De Rossi");




insert into Categoria(Codice,Nome) values ("VL"," Vini e Liquori");
insert into Categoria(Codice,Nome) values ("F","Formaggi e latticini");
insert into Categoria(Codice,Nome) values ("P","Pasta");


/*
insert into MetodoDiPagamento(Codice,Tipo,NominativoIntestatario) values ();
insert into MetodoDiPagamento(Codice,Tipo,NominativoIntestatario) values ();
insert into MetodoDiPagamento(Codice,Tipo,NominativoIntestatario) values ();
*/



insert into Prodotto(Codice,Nome,Descrizione,Prezzo,Peso,CodiceCategoria,image,quantita) values ( "001"," Costa d'Amalfi DOC Tramonti Bianco 2019 Tenuta-San Francesco " ,"Il Tramonti Bianco, e' un vino bianco vivo, fresco e sapido. Ottimo compagno della cucina di mare Annata 2018 in uscita ad Aprile 2019 Vitigno: Falanghina - Biancolella - Pepella Regione: Campania",13,2.00,"VL","images/costaAm.jpg",1);
insert into Prodotto(Codice,Nome,Descrizione,Prezzo,Peso,CodiceCategoria,image,quantita) values ("002", "Limoncello di limone Costa d'Amalfi I.G.P.","Il nostro limoncello e ricavato esclusivamente dalle bucce del limone Costa d'Amalfi I.G.P. Sfusato Amalfitano, racchiude in se la sintesi di elementi naturali ed umani esclusivi che rendono unica la sua tipicita.",14,3.00,"VL","images/limoncello.jpg",1);
insert into Prodotto(Codice,Nome,Descrizione,Prezzo,Peso,CodiceCategoria,image,quantita) values ("003", "Vecchio Amaro Del Capo Red Hot Edition" , "DA UN'ANTICA RICETTA CALABRESE, L'AMARO PICCANTE Dall'incontro di due simboli della Calabria",19,  2.00,"VL","images/amaroCapo.jpg",1);
insert into Prodotto(Codice,Nome,Descrizione,Prezzo,Peso,CodiceCategoria,image,quantita) values ("004", "Etna Nerello Mascalese DOC Passorosso 2017 - Passopisciaro" , "Annata: 2017 Abbinamenti: Formaggi stagionati, Primi di terra, Secondi di terra",25, 5.00,"VL","images/etnaNerello.jpg",1);
insert into Prodotto(Codice,Nome,Descrizione,Prezzo,Peso,CodiceCategoria,image,quantita) values ("005", "MOZZARELLA DI GIOIA DEL COLLE DOP" , "Il sapore della Mozzarella di Gioia del Colle Dop e' di latte delicatamente acidulo, con lieve retrogusto di fermentato/siero acido, piu' intenso nel formaggio appena prodotto; odore lattico, acidulo, con eventuali sfumature di burro; Si presenta con una superficie liscia o lievemente fibrosa, lucente, non viscida, ne scagliata. L'aspetto esterno e' di colore bianco, con eventuali sfumature stagionali di colore paglierino. Al taglio la pasta, che deve avere consistenza elastica ed essere priva di difetti, presenta una leggera fuoriuscita di siero di colore bianco.",30, 4.00,"F","images/mozzarellaGioia.jpg",1 );
insert into Prodotto(Codice,Nome,Descrizione,Prezzo,Peso,CodiceCategoria,image,quantita) values ("006","Orecchiette di semola" , "Pasta di semola di grano duro. Ingredienti: semola di grano duro, acqua. Allergeni: glutine; puo' contenere tracce di soia.",3, 0.500, "P","images/orecchiette.jpg",1 );
/*
insert into Domiciliato(IDIndirizzo,IDUtente) values ();
insert into Domiciliato(IDIndirizzo,IDUtente) values ();
insert into Domiciliato(IDIndirizzo,IDUtente) values ();


insert into Wishlist(IDUtente,CodiceProdotto,DataAggiunta) values ();
insert into Wishlist(IDUtente,CodiceProdotto,DataAggiunta) values ();
insert into Wishlist(IDUtente,CodiceProdotto,DataAggiunta) values ();


insert into Acquisto(IDUtente,CodiceProdotto,CodFattura) values ();
insert into Acquisto(IDUtente,CodiceProdotto,CodFattura) values ();
insert into Acquisto(IDUtente,CodiceProdotto,CodFattura) values ();
*/
insert into Creazione(CodiceProdotto,PartitaIvaProduttore) values ("001","34565678THK");
insert into Creazione(CodiceProdotto,PartitaIvaProduttore) values ("002","567493024TW");
insert into Creazione(CodiceProdotto,PartitaIvaProduttore) values ("003","34567009SWS");
/*
insert into Ordine(NumeroOrdine,Stato,DataOrdine,IDUtente,IDIndirizzo,IDSpecificaOrdine) values ();
insert into Ordine(NumeroOrdine,Stato,DataOrdine,IDUtente,IDIndirizzo,IDSpecificaOrdine) values ();
insert into Ordine(NumeroOrdine,Stato,DataOrdine,IDUtente,IDIndirizzo,IDSpecificaOrdine) values ();

insert into SpecificaOrdine(ID,NumeroOrdine,PesoTotale,CostoTotale) values ();
insert into SpecificaOrdine(ID,NumeroOrdine,PesoTotale,CostoTotale) values ();
insert into SpecificaOrdine(ID,NumeroOrdine,PesoTotale,CostoTotale) values ();

insert into Riferimento(CodiceProdotto,IDSpecificaOrdine) values ();
insert into Riferimento(CodiceProdotto,IDSpecificaOrdine) values ();
insert into Riferimento(CodiceProdotto,IDSpecificaOrdine) values ();

insert into Saldo(CodiceMetodoDiPagamento,NumeroOrdine) values ();
insert into Saldo(CodiceMetodoDiPagamento,NumeroOrdine) values ();
insert into Saldo(CodiceMetodoDiPagamento,NumeroOrdine) values ();

insert into Utilizzo(CodiceMetodoDiPagamento,IDUtente) values ();
insert into Utilizzo(CodiceMetodoDiPagamento,IDUtente) values ();
insert into Utilizzo(CodiceMetodoDiPagamento,IDUtente) values ();
*/
              