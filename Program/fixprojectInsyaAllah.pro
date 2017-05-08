DOMAINS
kondisi = cond*
cond = string

FACTS
kelompok(kondisi)
false(cond)
PREDICATES

nondeterm start
nondeterm lihat(kondisi)
nondeterm pilih(integer)
nondeterm pilih1
nondeterm pilih2
nondeterm pilih3
nondeterm lcd(integer)
nondeterm lcd1
nondeterm lcd2
nondeterm kerusakanlcd1
nondeterm kerusakanlcd2

nondeterm perbaikanlcd1
nondeterm perbaikanlcd2

nondeterm fixlcd1(integer)
nondeterm fixlcd2(integer)

nondeterm speaker(integer)
nondeterm kerusakanspeaker1
nondeterm kerusakanspeaker2

nondeterm speakertidaksuara1
nondeterm speakertidaksuara2

nondeterm speakerpecah1
nondeterm speakerpecah2

nondeterm fixspeaker1(integer)
nondeterm fixspeaker2(integer)

nondeterm usb(integer)
nondeterm kerusakanusb1
nondeterm kerusakanusb2
nondeterm patah1
nondeterm patah2

nondeterm tidakberfungsi1
nondeterm tidakberfungsi2

nondeterm fixusb1(integer)
nondeterm fixusb2(integer)
nondeterm perulangan(integer)
nondeterm perulangan1(integer)

nondeterm perulangan2(integer)
nondeterm perulangan3(integer)

nondeterm perulangan4(integer)
nondeterm perulangan5(integer)

nondeterm perulangan6(integer)
nondeterm perulangan7(integer)

nondeterm perulangan8(integer)
nondeterm perulangan9(integer)

nondeterm perulangan10(integer)
nondeterm perulangan11(integer)


nondeterm fix
ulang(integer,integer)


CLAUSES
ulang(Y,Y):- !.
ulang(_,_):- fail.

	kelompok(["PROJECT AKHIR AI\nJUDUL : SISTEM PENDUKUNG KEPUTUSAN KERUSAKAN HP BESERTA KISARAN BIAYA\nKELOMPOK 10\n1.","Pebri Sudibyo 1515015136\n2.","Indriawan Niswar 1515015143\n3.","Gusti Rezky Ananda 1515015166\n"]).

start:-	
	kelompok(Kelompok),
	lihat(Kelompok),
	nl,nl,

write("\n"),
write("--------------------------------------------------"),
write("SISTEM PENDUKUNG KEPUTUSAN KERUSAKAN HP BESERTA KISARAN  BIAYA\n"),
write("\t\t\t\t\t\t\tKELOMPOK 10"),
write("----------------------------------------------------------------------------\n\n"),
write("\n"),
write("\n"),
write("1. LCD\n"),
write("2. Speaker\n"),
write("3. Port USB\n"),
write("\n"),
write("Silahkan Masukan Pilihan Kerusakan HP Anda: "),
readint(P),pilih(P).

pilih(P):- ulang(P,1),pilih1.
pilih(P):- ulang(P,2),pilih2.
pilih(P):- ulang(P,3),pilih3.
pilih(_):- start.

lihat([H|T]):-
	not(false(H)),
	write(H),
	lihat(T).
	
	lihat([H|_]):-
	assertz(false(H)).

pilih1:-
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("KERUSAKAN LCD"),
write("\n"),
write("\n"),
write("1. LCD Retak \n"),
write("2. LCD Tidak Mau Hidup\n"),
write("\n"),
write("Silahkan Masukan Pilihan Kerusakan LCD Anda: "),
readint(M),lcd(M).

lcd(M):- ulang(M,1),lcd1.
lcd(M):- ulang(M,2),lcd2.
lcd(_):- lcd1.

lcd1 :-	
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("LAYAR LCD"),
write("\n"),
write("\n"),
write("1. Service LCD \n"),
write("2. Beli LCD.\n"),
write("\n"),
write("Silahkan Masukan Pilihan: "),
readint(P),fixlcd1(P).

fixlcd1(M):- ulang(M,1),kerusakanlcd1.
fixlcd1(M):- ulang(M,2),kerusakanlcd2.

fixlcd1(_):- kerusakanlcd1.

kerusakanlcd1:-
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Service LCD\n\n"),
write ("Harga : Rp 450.000,-\n\n"),
write("1. Harga LCD Rp.250.000,-"),nl,
write("2. Biaya Service Rp.200.000,-"),nl,
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("SOLUSI LCD ANDA"),
write("\n"),
write("1. Gunakan Pelindung Layar"),nl,
write("2. Hindari Dari Segala Bentuk Benturan"),nl,
write("\n"),
write("\n"),
write("\n"),



write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Apakah anda ingin mengulang? "),
write("\n"),
write(" 1. Yes "),
write("\n"),
write("2. No  "),

write("\n"),
readint(A),perulangan(A).

perulangan(A):- ulang(A,1),start.
perulangan(A):- ulang(A,2),fix.
perulangan(_):- kerusakanlcd1.

kerusakanlcd2:-
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("BELI LCD\n\n"),

write ("Harga : Rp 200.000,- \n\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("SOLUSI LCD ANDA"),
write("\n"),
write("1. Gunakan Pelindung Layar"),nl,
write("2. Hindari Dari Segala Bentuk Benturan"),nl,
write("\n"),
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Apakah anda ingin mengulang? "),
write("\n"),
write(" 1. Yes "), 
write("\n"),
write(" 2. No   \n"),

write("\n"),
readint(A),perulangan1(A).

perulangan1(A):- ulang(A,1),start.
perulangan1(A):- ulang(A,2),fix.
perulangan1(_):- kerusakanlcd2.


lcd2 :-	
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Layar LCD"),
write("\n"),
write("\n"),
write("1. Service LCD\n"),
write("2. Beli LCD.\n"),
write("\n"),
write("Silahkan Masukan Pilihan Anda: "),
readint(P),fixlcd2(P).

fixlcd2(M):- ulang(M,1),perbaikanlcd1.
fixlcd2(M):- ulang(M,2),perbaikanlcd2.
fixlcd2(_):- perbaikanlcd1.

perbaikanlcd1:-
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Service LCD \n\n"),
write (" Harga : Rp 450.000,-\n\n"),
write("1. Harga LCD Rp.250.000,-"),nl,
write("2. Biaya Service Rp.200.000,-"),nl,
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("SOLUSI LCD ANDA\n\n"),
write("\n"),
write("\t\t1. Gunakan Pelindung Layar"),nl,
write("\t\t2. Hindari Dari Segala Bentuk Benturan"),nl,
write("\n"),
write("\n"),
write("\n"),


write("----------------------------------------------------------------------------------------------\n"),
write("   Apakah anda ingin mengulang?   "),
write("\n"),
write("   1. Yes                                           "), 
write("\n"),
write("   2. No                                             \n"),
write("\n"),
readint(A),perulangan3(A).

perulangan3(A):- ulang(A,1),start.
perulangan3(A):- ulang(A,2),fix.
perulangan3(_):- kerusakanlcd2.


perbaikanlcd2:-
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Beli LCD\n\n"),
write ("Harga : Rp 250.000,-\n\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("SOLUSI LCD ANDA"),
write("\n"),
write("1. Gunakan Pelindung Layar"),nl,
write("2. Hindari Dari Segala Bentuk Benturan"),nl,
write("\n"),
write("\n"),
write("\n"),
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write(" Apakah anda ingin mengulang?   |"),
write("\n"),
write("1. Yes"), 
write("\n"),
write("2. No\n"),
write("\n"),
readint(A),perulangan3(A).
perulangan2(A):- ulang(A,1),start.

perulangan2(A):- ulang(A,2),fix.
perulangan2(_):- perbaikanlcd2.



pilih2:-
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Kerusakan Speaker"),
write("\n"),
write("\n"),
write("1. Speaker Tidak Ada Suara\n"),
write("2. Speaker Bersuara Pecah\n"),
write("\n"),
write("Silahkan Masukan Pilihan Anda: "),
readint(M), speaker(M).

speaker(M):- ulang(M,1),kerusakanspeaker1.
speaker(M):- ulang(M,2),kerusakanspeaker2.
speaker(_):- kerusakanspeaker1.

kerusakanspeaker1 :-	
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Kerusakan Speaker 1"),
write("\n"),
write("\n"),
write("1. Service Speaker \n"),
write("2. Beli Speaker\n"),
write("\n"),
write("Silahkan Masukkan Pilihan Anda: "),
readint(P),fixspeaker1(P).

fixspeaker1(M):- ulang(M,1),speakertidaksuara1.
fixspeaker1(M):- ulang(M,2),speakertidaksuara2.

fixspeaker1(_):- speakertidaksuara1.

speakertidaksuara1:-
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Service Speaker\n\n"),
write ("Harga : Rp 200.000,-\n\n"),
write("1. Harga Speaker Rp.100.000,-"),nl,
write("2. Biaya Service Speaker Rp.100.000,-"),nl,
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("SOLUSI SPEAKER\n\n"),
write("1. Jangan Memutar Suara Dengan Kondisi Volume Full"),nl,
write("2. Hindari Dari Segala Bentuk Benturan "),nl,

write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Apakah anda ingin mengulang?   |"),
write("\n"),
write("1. Yes "), 
write("\n"),
write("2. No  \n"),

write("\n"),
readint(A),perulangan4(A).
perulangan4(A):- ulang(A,1),start.
perulangan4(A):- ulang(A,2),fix.
perulangan4(_):- speakertidaksuara1.

speakertidaksuara2:-
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Beli Speaker\n\n"),
write ("Harga : Rp 100.000,- \n\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("SOLUSI SPEAKER\n\n"),

write("1. Jangan Memutar Suara Dengan Kondisi Volume Full"),nl,
write("2. Hindari Dari Segala Bentuk Benturan"),nl,

write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Apakah anda ingin mengulang? "),
write("\n"),
write("1. Yes"), 
write("\n"),
write("2. No\n"),

write("\n"),
readint(A),perulangan5(A).
perulangan5(A):- ulang(A,1),start.
perulangan5(A):- ulang(A,2),fix.
perulangan5(_):- speakertidaksuara2.



kerusakanspeaker2 :-	
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Kerusakan Speaker 2"),
write("\n"),
write("\n"),
write("1. Service Speaker \n"),
write("2. Beli Speaker\n"),
write("\n"),
write("Silahkan Masukkan Pilihan Anda : "),
readint(P),fixspeaker2(P).

fixspeaker2(M):- ulang(M,1),speakerpecah1.
fixspeaker2(M):- ulang(M,2),speakerpecah2.

fixspeaker2(_):- speakerpecah1.

speakerpecah1:-
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Service Speaker"),

write ("Harga : Rp 200.000,-\n\n"),
write("1. Harga Speaker Rp.100.000,-"),nl,
write("2. Biaya Service Speaker Rp.100.000,-"),nl,
write("\n"),

write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Apakah anda ingin mengulang?   "),
write("\n"),
write("1. Yes"), 
write("\n"),
write("2. No \n"),
write("\n"),
readint(A),perulangan6(A).
perulangan6(A):- ulang(A,1),start.
perulangan6(A):- ulang(A,2),fix.
perulangan6(_):- speakerpecah1.

speakerpecah2:-
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Beli Speaker"),
write("Harga : Rp 100.000,- \n\n"),

write("\n"),


write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Apakah anda ingin mengulang?   "),
write("\n"),
write("1. Yes"), 
write("\n"),
write("2. No  \n"),
write("\n"),
readint(A),perulangan7(A).
perulangan7(A):- ulang(A,1),start.
perulangan7(A):- ulang(A,2),fix.
perulangan7(_):- speakerpecah2.



pilih3:-
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Kerusakan PORT USB"),
write("\n"),
write("\n"),
write("1. Port USB Patah\n"),
write("2. Port USB Tidak Berfungsi\n"),
write("\n"),
write("Silahkan Masukan Pilihan Anda: "),
readint(M),usb(M).

usb(M):- ulang(M,1),kerusakanusb1.
usb(M):- ulang(M,2),kerusakanusb2.
usb(_):- kerusakanusb1.

kerusakanusb1 :-	
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Port USB Patah"),

write("1. Service Port USB \n"),
write("2. Beli Port USB\n"),

write("\n"),
write("Silahkan Masukan Pilihan Anda: "),
readint(P),fixusb1(P).

fixusb1(M):- ulang(M,1),patah1.
fixusb1(M):- ulang(M,2),patah2.

fixusb1(_):- patah1.

patah1:-
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Service PORT USB"),

write ("Harga : Rp 120.000,-\n\n"),
write("1. Harga Port USB Rp.70.000,-"),nl,
write("2. Biaya Service Port USB Rp.50.000,-"),nl,
write("\n"),
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Apakah anda ingin mengulang?   "),
write("\n"),
write("  1. Yes  "), 
write("\n"),
write("2. No                 \n"),

write("\n"),
readint(A),perulangan8(A).

perulangan8(A):- ulang(A,1),start.
perulangan8(A):- ulang(A,2),fix.
perulangan8(_):- patah1.

patah2:-
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Beli Port USB"),

write ("Harga : Rp70.000,- \n\n"),
write("\n"),
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Apakah anda ingin mengulang?  "),
write("\n"),
write("1. Yes"), 
write("\n"),
write("2. No  \n"),
write("\n"),
readint(A),perulangan9(A).
perulangan9(A):- ulang(A,1),start.
perulangan9(A):- ulang(A,2),fix.
perulangan9(_):- patah2.


kerusakanusb2 :-	
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Port USB Tidak Berfungsi"),

write("\n"),
write("\n"),
write("1. Service Port USB \n"),
write("2. Beli Port USB\n"),

write("\n"),
write("Silahkan Masukan Pilihan Anda: "),
readint(P),fixusb2(P).

fixusb2(M):- ulang(M,1),tidakberfungsi1.
fixusb2(M):- ulang(M,2),tidakberfungsi2.

fixusb2(_):- tidakberfungsi1.

tidakberfungsi1:-
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Service Port USB"),

write ("Harga : Rp 120.000,- \n\n"),
write("1. Harga Port USB Rp.70.000,-"),nl,
write("2. Biaya Service Port USB Rp.50.000,-"),nl,
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Apakah anda ingin mengulang?   "),
write("\n"),
write("1. Yes "), 
write("\n"),
write("2. No\n"),
write("\n"),
readint(A),perulangan10(A).
perulangan10(A):- ulang(A,1),start.
perulangan10(A):- ulang(A,2),fix.
perulangan10(_):- tidakberfungsi1.

tidakberfungsi2:-
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Beli Port USB\n\n"),

write ("Harga : Rp 70.000,- \n\n"),
write("\n"),
write("\n"),
write("----------------------------------------------------------------------------------------------\n"),
write("Apakah anda ingin mengulang?"),
write("\n"),
write("1. Yes "), 
write("\n"),
write("2. No    \n"),
write("\n"),
readint(A),perulangan11(A).
perulangan11(A):- ulang(A,1),start.
perulangan11(A):- ulang(A,2),fix.
perulangan11(_):- tidakberfungsi2.


fix:-
write("\n"),
write("\n"),
write("=========================================================\n"),
write("=========================================================\n"),
write("=\t\t\tTERIMA KASIH\t\t\t=\n"),
write("=========================================================\n"),
write("=========================================================\n"),
write("\n"),
write("\n").


GOAL
start.