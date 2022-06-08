#!/bin/sh -x
{
set -e
# create network namespaces
ip netns add honancho
ip netns add nakanofujimicho
ip netns add nakanoshimbashi
ip netns add asakusa
ip netns add tawaramachi
ip netns add inaricho
ip netns add ueno
ip netns add uenohirokoji
ip netns add suehirocho
ip netns add kanda
ip netns add mitsukoshimae
ip netns add nihombashi
ip netns add kyobashi
ip netns add ginza
ip netns add shimbashi
ip netns add toranomon
ip netns add tameikesanno
ip netns add akasakamitsuke
ip netns add aoyamaicchome
ip netns add gaiemmae
ip netns add omotesando
ip netns add shibuya
ip netns add ogikubo
ip netns add minamiasagaya
ip netns add shinkoenji
ip netns add higashikoenji
ip netns add shinnakano
ip netns add nakanosakaue
ip netns add nishishinjuku
ip netns add shinjuku
ip netns add shinjukusanchome
ip netns add shinjukugyoemmae
ip netns add yotsuyasanchome
ip netns add yotsuya
ip netns add kokkaigijidomae
ip netns add kasumigaseki
ip netns add tokyo
ip netns add otemachi
ip netns add awajicho
ip netns add ochanomizu
ip netns add hongosanchome
ip netns add korakuen
ip netns add myogadani
ip netns add shinotsuka
ip netns add ikebukuro
ip netns add kitasenju
ip netns add minamisenju
ip netns add minowa
ip netns add iriya
ip netns add nakaokachimachi
ip netns add akihabara
ip netns add kodemmacho
ip netns add ningyocho
ip netns add kayabacho
ip netns add hatchobori
ip netns add tsukiji
ip netns add higashiginza
ip netns add hibiya
ip netns add toranomonhiruzu
ip netns add kamiyacho
ip netns add roppongi
ip netns add hiroo
ip netns add ebisu
ip netns add nakameguro
ip netns add nakano
ip netns add ochiai
ip netns add takadanobaba
ip netns add waseda
ip netns add kagurazaka
ip netns add iidabashi
ip netns add kudanshita
ip netns add takebashi
ip netns add monzennakacho
ip netns add kiba
ip netns add toyocho
ip netns add minamisunamachi
ip netns add nishikasai
ip netns add kasai
ip netns add urayasu
ip netns add minamigyotoku
ip netns add gyotoku
ip netns add myoden
ip netns add barakinakayama
ip netns add nishifunabashi
ip netns add kitaayase
ip netns add ayase
ip netns add machiya
ip netns add nishinippori
ip netns add sendagi
ip netns add nezu
ip netns add yushima
ip netns add shinochanomizu
ip netns add nijubashimae
ip netns add akasaka
ip netns add nogizaka
ip netns add meijijingumae
ip netns add yoyogikoen
ip netns add yoyogiuehara
ip netns add wakoshi
ip netns add chikatetsunarimasu
ip netns add chikatetsuakatsuka
ip netns add heiwadai
ip netns add hikawadai
ip netns add kotakemukaihara
ip netns add senkawa
ip netns add kanamecho
ip netns add higashiikebukuro
ip netns add gokokuji
ip netns add edogawabashi
ip netns add ichigaya
ip netns add kojimachi
ip netns add nagatacho
ip netns add sakuradamon
ip netns add yurakucho
ip netns add ginzaicchome
ip netns add shintomicho
ip netns add tsukishima
ip netns add toyosu
ip netns add tatsumi
ip netns add shinkiba
ip netns add hanzomon
ip netns add jimbocho
ip netns add suitengumae
ip netns add kiyosumishirakawa
ip netns add sumiyoshi
ip netns add kinshicho
ip netns add oshiage
ip netns add akabaneiwabuchi
ip netns add shimo
ip netns add ojikamiya
ip netns add oji
ip netns add nishigahara
ip netns add komagome
ip netns add honkomagome
ip netns add todaimae
ip netns add roppongiicchome
ip netns add azabujuban
ip netns add shirakanetakanawa
ip netns add shiroganedai
ip netns add meguro
ip netns add zoshigaya
ip netns add nishiwaseda
ip netns add higashishinjuku
ip netns add kitasando

# create cable(veth pairs)
ip netns exec honancho ip link add m27 type veth peer name m26 netns nakanofujimicho
ip netns exec nakanofujimicho ip link add m28 type veth peer name m27 netns nakanoshimbashi
ip netns exec nakanoshimbashi ip link add m6 type veth peer name m28 netns nakanosakaue
ip netns exec asakusa ip link add g18 type veth peer name g19 netns tawaramachi
ip netns exec tawaramachi ip link add g17 type veth peer name g18 netns inaricho
ip netns exec inaricho ip link add g16 type veth peer name g17 netns ueno
ip netns exec ueno ip link add g15 type veth peer name g16 netns uenohirokoji
ip netns exec uenohirokoji ip link add g14 type veth peer name g15 netns suehirocho
ip netns exec suehirocho ip link add g13 type veth peer name g14 netns kanda
ip netns exec kanda ip link add g12 type veth peer name g13 netns mitsukoshimae
ip netns exec mitsukoshimae ip link add g11 type veth peer name g12 netns nihombashi
ip netns exec nihombashi ip link add g10 type veth peer name g11 netns kyobashi
ip netns exec kyobashi ip link add g9 type veth peer name g10 netns ginza
ip netns exec ginza ip link add g8 type veth peer name g9 netns shimbashi
ip netns exec shimbashi ip link add g7 type veth peer name g8 netns toranomon
ip netns exec toranomon ip link add g6 type veth peer name g7 netns tameikesanno
ip netns exec tameikesanno ip link add g5 type veth peer name g6 netns akasakamitsuke
ip netns exec akasakamitsuke ip link add g4 type veth peer name g5 netns aoyamaicchome
ip netns exec aoyamaicchome ip link add g3 type veth peer name g4 netns gaiemmae
ip netns exec gaiemmae ip link add g2 type veth peer name g3 netns omotesando
ip netns exec omotesando ip link add g1 type veth peer name g2 netns shibuya
ip netns exec ogikubo ip link add m2 type veth peer name m1 netns minamiasagaya
ip netns exec minamiasagaya ip link add m3 type veth peer name m2 netns shinkoenji
ip netns exec shinkoenji ip link add m4 type veth peer name m3 netns higashikoenji
ip netns exec higashikoenji ip link add m5 type veth peer name m4 netns shinnakano
ip netns exec shinnakano ip link add m6 type veth peer name m5 netns nakanosakaue
ip netns exec nakanosakaue ip link add m7 type veth peer name m6 netns nishishinjuku
ip netns exec nishishinjuku ip link add m8 type veth peer name m7 netns shinjuku
ip netns exec shinjuku ip link add m9 type veth peer name m8 netns shinjukusanchome
ip netns exec shinjukusanchome ip link add m10 type veth peer name m9 netns shinjukugyoemmae
ip netns exec shinjukugyoemmae ip link add m11 type veth peer name m10 netns yotsuyasanchome
ip netns exec yotsuyasanchome ip link add m12 type veth peer name m11 netns yotsuya
ip netns exec yotsuya ip link add m13 type veth peer name m12 netns akasakamitsuke
ip netns exec akasakamitsuke ip link add m14 type veth peer name m13 netns kokkaigijidomae
ip netns exec kokkaigijidomae ip link add m15 type veth peer name m14 netns kasumigaseki
ip netns exec kasumigaseki ip link add m16 type veth peer name m15 netns ginza
ip netns exec ginza ip link add m17 type veth peer name m16 netns tokyo
ip netns exec tokyo ip link add m18 type veth peer name m17 netns otemachi
ip netns exec otemachi ip link add m19 type veth peer name m18 netns awajicho
ip netns exec awajicho ip link add m20 type veth peer name m19 netns ochanomizu
ip netns exec ochanomizu ip link add m21 type veth peer name m20 netns hongosanchome
ip netns exec hongosanchome ip link add m22 type veth peer name m21 netns korakuen
ip netns exec korakuen ip link add m23 type veth peer name m22 netns myogadani
ip netns exec myogadani ip link add m24 type veth peer name m23 netns shinotsuka
ip netns exec shinotsuka ip link add m25 type veth peer name m24 netns ikebukuro
ip netns exec kitasenju ip link add h21 type veth peer name h22 netns minamisenju
ip netns exec minamisenju ip link add h20 type veth peer name h21 netns minowa
ip netns exec minowa ip link add h19 type veth peer name h20 netns iriya
ip netns exec iriya ip link add h18 type veth peer name h19 netns ueno
ip netns exec ueno ip link add h17 type veth peer name h18 netns nakaokachimachi
ip netns exec nakaokachimachi ip link add h16 type veth peer name h17 netns akihabara
ip netns exec akihabara ip link add h15 type veth peer name h16 netns kodemmacho
ip netns exec kodemmacho ip link add h14 type veth peer name h15 netns ningyocho
ip netns exec ningyocho ip link add h13 type veth peer name h14 netns kayabacho
ip netns exec kayabacho ip link add h12 type veth peer name h13 netns hatchobori
ip netns exec hatchobori ip link add h11 type veth peer name h12 netns tsukiji
ip netns exec tsukiji ip link add h10 type veth peer name h11 netns higashiginza
ip netns exec higashiginza ip link add h9 type veth peer name h10 netns ginza
ip netns exec ginza ip link add h8 type veth peer name h9 netns hibiya
ip netns exec hibiya ip link add h7 type veth peer name h8 netns kasumigaseki
ip netns exec kasumigaseki ip link add h6 type veth peer name h7 netns toranomonhiruzu
ip netns exec toranomonhiruzu ip link add h5 type veth peer name h6 netns kamiyacho
ip netns exec kamiyacho ip link add h4 type veth peer name h5 netns roppongi
ip netns exec roppongi ip link add h3 type veth peer name h4 netns hiroo
ip netns exec hiroo ip link add h2 type veth peer name h3 netns ebisu
ip netns exec ebisu ip link add h1 type veth peer name h2 netns nakameguro
ip netns exec nakano ip link add t2 type veth peer name t1 netns ochiai
ip netns exec ochiai ip link add t3 type veth peer name t2 netns takadanobaba
ip netns exec takadanobaba ip link add t4 type veth peer name t3 netns waseda
ip netns exec waseda ip link add t5 type veth peer name t4 netns kagurazaka
ip netns exec kagurazaka ip link add t6 type veth peer name t5 netns iidabashi
ip netns exec iidabashi ip link add t7 type veth peer name t6 netns kudanshita
ip netns exec kudanshita ip link add t8 type veth peer name t7 netns takebashi
ip netns exec takebashi ip link add t9 type veth peer name t8 netns otemachi
ip netns exec otemachi ip link add t10 type veth peer name t9 netns nihombashi
ip netns exec nihombashi ip link add t11 type veth peer name t10 netns kayabacho
ip netns exec kayabacho ip link add t12 type veth peer name t11 netns monzennakacho
ip netns exec monzennakacho ip link add t13 type veth peer name t12 netns kiba
ip netns exec kiba ip link add t14 type veth peer name t13 netns toyocho
ip netns exec toyocho ip link add t15 type veth peer name t14 netns minamisunamachi
ip netns exec minamisunamachi ip link add t16 type veth peer name t15 netns nishikasai
ip netns exec nishikasai ip link add t17 type veth peer name t16 netns kasai
ip netns exec kasai ip link add t18 type veth peer name t17 netns urayasu
ip netns exec urayasu ip link add t19 type veth peer name t18 netns minamigyotoku
ip netns exec minamigyotoku ip link add t20 type veth peer name t19 netns gyotoku
ip netns exec gyotoku ip link add t21 type veth peer name t20 netns myoden
ip netns exec myoden ip link add t22 type veth peer name t21 netns barakinakayama
ip netns exec barakinakayama ip link add t23 type veth peer name t22 netns nishifunabashi
ip netns exec kitaayase ip link add c19 type veth peer name c20 netns ayase
ip netns exec ayase ip link add c18 type veth peer name c19 netns kitasenju
ip netns exec kitasenju ip link add c17 type veth peer name c18 netns machiya
ip netns exec machiya ip link add c16 type veth peer name c17 netns nishinippori
ip netns exec nishinippori ip link add c15 type veth peer name c16 netns sendagi
ip netns exec sendagi ip link add c14 type veth peer name c15 netns nezu
ip netns exec nezu ip link add c13 type veth peer name c14 netns yushima
ip netns exec yushima ip link add c12 type veth peer name c13 netns shinochanomizu
ip netns exec shinochanomizu ip link add c11 type veth peer name c12 netns otemachi
ip netns exec otemachi ip link add c10 type veth peer name c11 netns nijubashimae
ip netns exec nijubashimae ip link add c9 type veth peer name c10 netns hibiya
ip netns exec hibiya ip link add c8 type veth peer name c9 netns kasumigaseki
ip netns exec kasumigaseki ip link add c7 type veth peer name c8 netns kokkaigijidomae
ip netns exec kokkaigijidomae ip link add c6 type veth peer name c7 netns akasaka
ip netns exec akasaka ip link add c5 type veth peer name c6 netns nogizaka
ip netns exec nogizaka ip link add c4 type veth peer name c5 netns omotesando
ip netns exec omotesando ip link add c3 type veth peer name c4 netns meijijingumae
ip netns exec meijijingumae ip link add c2 type veth peer name c3 netns yoyogikoen
ip netns exec yoyogikoen ip link add c1 type veth peer name c2 netns yoyogiuehara
ip netns exec wakoshi ip link add y2 type veth peer name y1 netns chikatetsunarimasu
ip netns exec chikatetsunarimasu ip link add y3 type veth peer name y2 netns chikatetsuakatsuka
ip netns exec chikatetsuakatsuka ip link add y4 type veth peer name y3 netns heiwadai
ip netns exec heiwadai ip link add y5 type veth peer name y4 netns hikawadai
ip netns exec hikawadai ip link add y6 type veth peer name y5 netns kotakemukaihara
ip netns exec kotakemukaihara ip link add y7 type veth peer name y6 netns senkawa
ip netns exec senkawa ip link add y8 type veth peer name y7 netns kanamecho
ip netns exec kanamecho ip link add y9 type veth peer name y8 netns ikebukuro
ip netns exec ikebukuro ip link add y10 type veth peer name y9 netns higashiikebukuro
ip netns exec higashiikebukuro ip link add y11 type veth peer name y10 netns gokokuji
ip netns exec gokokuji ip link add y12 type veth peer name y11 netns edogawabashi
ip netns exec edogawabashi ip link add y13 type veth peer name y12 netns iidabashi
ip netns exec iidabashi ip link add y14 type veth peer name y13 netns ichigaya
ip netns exec ichigaya ip link add y15 type veth peer name y14 netns kojimachi
ip netns exec kojimachi ip link add y16 type veth peer name y15 netns nagatacho
ip netns exec nagatacho ip link add y17 type veth peer name y16 netns sakuradamon
ip netns exec sakuradamon ip link add y18 type veth peer name y17 netns yurakucho
ip netns exec yurakucho ip link add y19 type veth peer name y18 netns ginzaicchome
ip netns exec ginzaicchome ip link add y20 type veth peer name y19 netns shintomicho
ip netns exec shintomicho ip link add y21 type veth peer name y20 netns tsukishima
ip netns exec tsukishima ip link add y22 type veth peer name y21 netns toyosu
ip netns exec toyosu ip link add y23 type veth peer name y22 netns tatsumi
ip netns exec tatsumi ip link add y24 type veth peer name y23 netns shinkiba
ip netns exec shibuya ip link add z2 type veth peer name z1 netns omotesando
ip netns exec omotesando ip link add z3 type veth peer name z2 netns aoyamaicchome
ip netns exec aoyamaicchome ip link add z4 type veth peer name z3 netns nagatacho
ip netns exec nagatacho ip link add z5 type veth peer name z4 netns hanzomon
ip netns exec hanzomon ip link add z6 type veth peer name z5 netns kudanshita
ip netns exec kudanshita ip link add z7 type veth peer name z6 netns jimbocho
ip netns exec jimbocho ip link add z8 type veth peer name z7 netns otemachi
ip netns exec otemachi ip link add z9 type veth peer name z8 netns mitsukoshimae
ip netns exec mitsukoshimae ip link add z10 type veth peer name z9 netns suitengumae
ip netns exec suitengumae ip link add z11 type veth peer name z10 netns kiyosumishirakawa
ip netns exec kiyosumishirakawa ip link add z12 type veth peer name z11 netns sumiyoshi
ip netns exec sumiyoshi ip link add z13 type veth peer name z12 netns kinshicho
ip netns exec kinshicho ip link add z14 type veth peer name z13 netns oshiage
ip netns exec akabaneiwabuchi ip link add n18 type veth peer name n19 netns shimo
ip netns exec shimo ip link add n17 type veth peer name n18 netns ojikamiya
ip netns exec ojikamiya ip link add n16 type veth peer name n17 netns oji
ip netns exec oji ip link add n15 type veth peer name n16 netns nishigahara
ip netns exec nishigahara ip link add n14 type veth peer name n15 netns komagome
ip netns exec komagome ip link add n13 type veth peer name n14 netns honkomagome
ip netns exec honkomagome ip link add n12 type veth peer name n13 netns todaimae
ip netns exec todaimae ip link add n11 type veth peer name n12 netns korakuen
ip netns exec korakuen ip link add n10 type veth peer name n11 netns iidabashi
ip netns exec iidabashi ip link add n9 type veth peer name n10 netns ichigaya
ip netns exec ichigaya ip link add n8 type veth peer name n9 netns yotsuya
ip netns exec yotsuya ip link add n7 type veth peer name n8 netns nagatacho
ip netns exec nagatacho ip link add n6 type veth peer name n7 netns tameikesanno
ip netns exec tameikesanno ip link add n5 type veth peer name n6 netns roppongiicchome
ip netns exec roppongiicchome ip link add n4 type veth peer name n5 netns azabujuban
ip netns exec azabujuban ip link add n3 type veth peer name n4 netns shirakanetakanawa
ip netns exec shirakanetakanawa ip link add n2 type veth peer name n3 netns shiroganedai
ip netns exec shiroganedai ip link add n1 type veth peer name n2 netns meguro
ip netns exec wakoshi ip link add f2 type veth peer name f1 netns chikatetsunarimasu
ip netns exec chikatetsunarimasu ip link add f3 type veth peer name f2 netns chikatetsuakatsuka
ip netns exec chikatetsuakatsuka ip link add f4 type veth peer name f3 netns heiwadai
ip netns exec heiwadai ip link add f5 type veth peer name f4 netns hikawadai
ip netns exec hikawadai ip link add f6 type veth peer name f5 netns kotakemukaihara
ip netns exec kotakemukaihara ip link add f7 type veth peer name f6 netns senkawa
ip netns exec senkawa ip link add f8 type veth peer name f7 netns kanamecho
ip netns exec kanamecho ip link add f9 type veth peer name f8 netns ikebukuro
ip netns exec ikebukuro ip link add f10 type veth peer name f9 netns zoshigaya
ip netns exec zoshigaya ip link add f11 type veth peer name f10 netns nishiwaseda
ip netns exec nishiwaseda ip link add f12 type veth peer name f11 netns higashishinjuku
ip netns exec higashishinjuku ip link add f13 type veth peer name f12 netns shinjukusanchome
ip netns exec shinjukusanchome ip link add f14 type veth peer name f13 netns kitasando
ip netns exec kitasando ip link add f15 type veth peer name f14 netns meijijingumae
ip netns exec meijijingumae ip link add f16 type veth peer name f15 netns shibuya

# set IP address: honancho
ip netns exec honancho sysctl -w net.ipv4.ip_forward=1
ip netns exec honancho sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec honancho ip addr add 10.254.2.26/32 dev lo
ip netns exec honancho ip addr add 10.2.26.10/24 dev m27

# set IP address: nakanofujimicho
ip netns exec nakanofujimicho sysctl -w net.ipv4.ip_forward=1
ip netns exec nakanofujimicho sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec nakanofujimicho ip addr add 10.254.2.27/32 dev lo
ip netns exec nakanofujimicho ip addr add 10.2.26.20/24 dev m26
ip netns exec nakanofujimicho ip addr add 10.2.27.10/24 dev m28

# set IP address: nakanoshimbashi
ip netns exec nakanoshimbashi sysctl -w net.ipv4.ip_forward=1
ip netns exec nakanoshimbashi sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec nakanoshimbashi ip addr add 10.254.2.28/32 dev lo
ip netns exec nakanoshimbashi ip addr add 10.2.27.20/24 dev m27
ip netns exec nakanoshimbashi ip addr add 10.2.28.10/24 dev m6

# set IP address: asakusa
ip netns exec asakusa sysctl -w net.ipv4.ip_forward=1
ip netns exec asakusa sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec asakusa ip addr add 10.254.1.19/32 dev lo
ip netns exec asakusa ip addr add 10.1.18.20/24 dev g18

# set IP address: tawaramachi
ip netns exec tawaramachi sysctl -w net.ipv4.ip_forward=1
ip netns exec tawaramachi sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec tawaramachi ip addr add 10.254.1.18/32 dev lo
ip netns exec tawaramachi ip addr add 10.1.17.20/24 dev g17
ip netns exec tawaramachi ip addr add 10.1.18.10/24 dev g19

# set IP address: inaricho
ip netns exec inaricho sysctl -w net.ipv4.ip_forward=1
ip netns exec inaricho sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec inaricho ip addr add 10.254.1.17/32 dev lo
ip netns exec inaricho ip addr add 10.1.16.20/24 dev g16
ip netns exec inaricho ip addr add 10.1.17.10/24 dev g18

# set IP address: ueno
ip netns exec ueno sysctl -w net.ipv4.ip_forward=1
ip netns exec ueno sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec ueno ip addr add 10.254.1.16/32 dev lo
ip netns exec ueno ip addr add 10.1.15.20/24 dev g15
ip netns exec ueno ip addr add 10.1.16.10/24 dev g17
ip netns exec ueno ip addr add 10.3.17.20/24 dev h17
ip netns exec ueno ip addr add 10.3.18.10/24 dev h19

# set IP address: uenohirokoji
ip netns exec uenohirokoji sysctl -w net.ipv4.ip_forward=1
ip netns exec uenohirokoji sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec uenohirokoji ip addr add 10.254.1.15/32 dev lo
ip netns exec uenohirokoji ip addr add 10.1.14.20/24 dev g14
ip netns exec uenohirokoji ip addr add 10.1.15.10/24 dev g16

# set IP address: suehirocho
ip netns exec suehirocho sysctl -w net.ipv4.ip_forward=1
ip netns exec suehirocho sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec suehirocho ip addr add 10.254.1.14/32 dev lo
ip netns exec suehirocho ip addr add 10.1.13.20/24 dev g13
ip netns exec suehirocho ip addr add 10.1.14.10/24 dev g15

# set IP address: kanda
ip netns exec kanda sysctl -w net.ipv4.ip_forward=1
ip netns exec kanda sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec kanda ip addr add 10.254.1.13/32 dev lo
ip netns exec kanda ip addr add 10.1.12.20/24 dev g12
ip netns exec kanda ip addr add 10.1.13.10/24 dev g14

# set IP address: mitsukoshimae
ip netns exec mitsukoshimae sysctl -w net.ipv4.ip_forward=1
ip netns exec mitsukoshimae sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec mitsukoshimae ip addr add 10.254.1.12/32 dev lo
ip netns exec mitsukoshimae ip addr add 10.1.11.20/24 dev g11
ip netns exec mitsukoshimae ip addr add 10.1.12.10/24 dev g13
ip netns exec mitsukoshimae ip addr add 10.7.9.10/24 dev z10
ip netns exec mitsukoshimae ip addr add 10.7.8.20/24 dev z8

# set IP address: nihombashi
ip netns exec nihombashi sysctl -w net.ipv4.ip_forward=1
ip netns exec nihombashi sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec nihombashi ip addr add 10.254.1.11/32 dev lo
ip netns exec nihombashi ip addr add 10.1.10.20/24 dev g10
ip netns exec nihombashi ip addr add 10.1.11.10/24 dev g12
ip netns exec nihombashi ip addr add 10.4.10.10/24 dev t11
ip netns exec nihombashi ip addr add 10.4.9.20/24 dev t9

# set IP address: kyobashi
ip netns exec kyobashi sysctl -w net.ipv4.ip_forward=1
ip netns exec kyobashi sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec kyobashi ip addr add 10.254.1.10/32 dev lo
ip netns exec kyobashi ip addr add 10.1.10.10/24 dev g11
ip netns exec kyobashi ip addr add 10.1.9.20/24 dev g9

# set IP address: ginza
ip netns exec ginza sysctl -w net.ipv4.ip_forward=1
ip netns exec ginza sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec ginza ip addr add 10.254.1.9/32 dev lo
ip netns exec ginza ip addr add 10.1.9.10/24 dev g10
ip netns exec ginza ip addr add 10.1.8.20/24 dev g8
ip netns exec ginza ip addr add 10.3.9.10/24 dev h10
ip netns exec ginza ip addr add 10.3.8.20/24 dev h8
ip netns exec ginza ip addr add 10.2.15.20/24 dev m15
ip netns exec ginza ip addr add 10.2.16.10/24 dev m17

# set IP address: shimbashi
ip netns exec shimbashi sysctl -w net.ipv4.ip_forward=1
ip netns exec shimbashi sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec shimbashi ip addr add 10.254.1.8/32 dev lo
ip netns exec shimbashi ip addr add 10.1.7.20/24 dev g7
ip netns exec shimbashi ip addr add 10.1.8.10/24 dev g9

# set IP address: toranomon
ip netns exec toranomon sysctl -w net.ipv4.ip_forward=1
ip netns exec toranomon sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec toranomon ip addr add 10.254.1.7/32 dev lo
ip netns exec toranomon ip addr add 10.1.6.20/24 dev g6
ip netns exec toranomon ip addr add 10.1.7.10/24 dev g8

# set IP address: tameikesanno
ip netns exec tameikesanno sysctl -w net.ipv4.ip_forward=1
ip netns exec tameikesanno sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec tameikesanno ip addr add 10.254.1.6/32 dev lo
ip netns exec tameikesanno ip addr add 10.1.5.20/24 dev g5
ip netns exec tameikesanno ip addr add 10.1.6.10/24 dev g7
ip netns exec tameikesanno ip addr add 10.8.5.20/24 dev n5
ip netns exec tameikesanno ip addr add 10.8.6.10/24 dev n7

# set IP address: akasakamitsuke
ip netns exec akasakamitsuke sysctl -w net.ipv4.ip_forward=1
ip netns exec akasakamitsuke sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec akasakamitsuke ip addr add 10.254.1.5/32 dev lo
ip netns exec akasakamitsuke ip addr add 10.1.4.20/24 dev g4
ip netns exec akasakamitsuke ip addr add 10.1.5.10/24 dev g6
ip netns exec akasakamitsuke ip addr add 10.2.12.20/24 dev m12
ip netns exec akasakamitsuke ip addr add 10.2.13.10/24 dev m14

# set IP address: aoyamaicchome
ip netns exec aoyamaicchome sysctl -w net.ipv4.ip_forward=1
ip netns exec aoyamaicchome sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec aoyamaicchome ip addr add 10.254.1.4/32 dev lo
ip netns exec aoyamaicchome ip addr add 10.1.3.20/24 dev g3
ip netns exec aoyamaicchome ip addr add 10.1.4.10/24 dev g5
ip netns exec aoyamaicchome ip addr add 10.7.2.20/24 dev z2
ip netns exec aoyamaicchome ip addr add 10.7.3.10/24 dev z4

# set IP address: gaiemmae
ip netns exec gaiemmae sysctl -w net.ipv4.ip_forward=1
ip netns exec gaiemmae sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec gaiemmae ip addr add 10.254.1.3/32 dev lo
ip netns exec gaiemmae ip addr add 10.1.2.20/24 dev g2
ip netns exec gaiemmae ip addr add 10.1.3.10/24 dev g4

# set IP address: omotesando
ip netns exec omotesando sysctl -w net.ipv4.ip_forward=1
ip netns exec omotesando sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec omotesando ip addr add 10.254.1.2/32 dev lo
ip netns exec omotesando ip addr add 10.5.3.20/24 dev c3
ip netns exec omotesando ip addr add 10.5.4.10/24 dev c5
ip netns exec omotesando ip addr add 10.1.1.20/24 dev g1
ip netns exec omotesando ip addr add 10.1.2.10/24 dev g3
ip netns exec omotesando ip addr add 10.7.1.20/24 dev z1
ip netns exec omotesando ip addr add 10.7.2.10/24 dev z3

# set IP address: shibuya
ip netns exec shibuya sysctl -w net.ipv4.ip_forward=1
ip netns exec shibuya sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec shibuya ip addr add 10.254.1.1/32 dev lo
ip netns exec shibuya ip addr add 10.9.15.20/24 dev f15
ip netns exec shibuya ip addr add 10.1.1.10/24 dev g2
ip netns exec shibuya ip addr add 10.7.1.10/24 dev z2

# set IP address: ogikubo
ip netns exec ogikubo sysctl -w net.ipv4.ip_forward=1
ip netns exec ogikubo sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec ogikubo ip addr add 10.254.2.1/32 dev lo
ip netns exec ogikubo ip addr add 10.2.1.10/24 dev m2

# set IP address: minamiasagaya
ip netns exec minamiasagaya sysctl -w net.ipv4.ip_forward=1
ip netns exec minamiasagaya sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec minamiasagaya ip addr add 10.254.2.2/32 dev lo
ip netns exec minamiasagaya ip addr add 10.2.1.20/24 dev m1
ip netns exec minamiasagaya ip addr add 10.2.2.10/24 dev m3

# set IP address: shinkoenji
ip netns exec shinkoenji sysctl -w net.ipv4.ip_forward=1
ip netns exec shinkoenji sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec shinkoenji ip addr add 10.254.2.3/32 dev lo
ip netns exec shinkoenji ip addr add 10.2.2.20/24 dev m2
ip netns exec shinkoenji ip addr add 10.2.3.10/24 dev m4

# set IP address: higashikoenji
ip netns exec higashikoenji sysctl -w net.ipv4.ip_forward=1
ip netns exec higashikoenji sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec higashikoenji ip addr add 10.254.2.4/32 dev lo
ip netns exec higashikoenji ip addr add 10.2.3.20/24 dev m3
ip netns exec higashikoenji ip addr add 10.2.4.10/24 dev m5

# set IP address: shinnakano
ip netns exec shinnakano sysctl -w net.ipv4.ip_forward=1
ip netns exec shinnakano sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec shinnakano ip addr add 10.254.2.5/32 dev lo
ip netns exec shinnakano ip addr add 10.2.4.20/24 dev m4
ip netns exec shinnakano ip addr add 10.2.5.10/24 dev m6

# set IP address: nakanosakaue
ip netns exec nakanosakaue sysctl -w net.ipv4.ip_forward=1
ip netns exec nakanosakaue sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec nakanosakaue ip addr add 10.254.2.6/32 dev lo
ip netns exec nakanosakaue ip addr add 10.2.28.20/24 dev m28
ip netns exec nakanosakaue ip addr add 10.2.5.20/24 dev m5
ip netns exec nakanosakaue ip addr add 10.2.6.10/24 dev m7

# set IP address: nishishinjuku
ip netns exec nishishinjuku sysctl -w net.ipv4.ip_forward=1
ip netns exec nishishinjuku sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec nishishinjuku ip addr add 10.254.2.7/32 dev lo
ip netns exec nishishinjuku ip addr add 10.2.6.20/24 dev m6
ip netns exec nishishinjuku ip addr add 10.2.7.10/24 dev m8

# set IP address: shinjuku
ip netns exec shinjuku sysctl -w net.ipv4.ip_forward=1
ip netns exec shinjuku sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec shinjuku ip addr add 10.254.2.8/32 dev lo
ip netns exec shinjuku ip addr add 10.2.7.20/24 dev m7
ip netns exec shinjuku ip addr add 10.2.8.10/24 dev m9

# set IP address: shinjukusanchome
ip netns exec shinjukusanchome sysctl -w net.ipv4.ip_forward=1
ip netns exec shinjukusanchome sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec shinjukusanchome ip addr add 10.254.2.9/32 dev lo
ip netns exec shinjukusanchome ip addr add 10.9.12.20/24 dev f12
ip netns exec shinjukusanchome ip addr add 10.9.13.10/24 dev f14
ip netns exec shinjukusanchome ip addr add 10.2.9.10/24 dev m10
ip netns exec shinjukusanchome ip addr add 10.2.8.20/24 dev m8

# set IP address: shinjukugyoemmae
ip netns exec shinjukugyoemmae sysctl -w net.ipv4.ip_forward=1
ip netns exec shinjukugyoemmae sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec shinjukugyoemmae ip addr add 10.254.2.10/32 dev lo
ip netns exec shinjukugyoemmae ip addr add 10.2.10.10/24 dev m11
ip netns exec shinjukugyoemmae ip addr add 10.2.9.20/24 dev m9

# set IP address: yotsuyasanchome
ip netns exec yotsuyasanchome sysctl -w net.ipv4.ip_forward=1
ip netns exec yotsuyasanchome sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec yotsuyasanchome ip addr add 10.254.2.11/32 dev lo
ip netns exec yotsuyasanchome ip addr add 10.2.10.20/24 dev m10
ip netns exec yotsuyasanchome ip addr add 10.2.11.10/24 dev m12

# set IP address: yotsuya
ip netns exec yotsuya sysctl -w net.ipv4.ip_forward=1
ip netns exec yotsuya sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec yotsuya ip addr add 10.254.2.12/32 dev lo
ip netns exec yotsuya ip addr add 10.2.11.20/24 dev m11
ip netns exec yotsuya ip addr add 10.2.12.10/24 dev m13
ip netns exec yotsuya ip addr add 10.8.7.20/24 dev n7
ip netns exec yotsuya ip addr add 10.8.8.10/24 dev n9

# set IP address: kokkaigijidomae
ip netns exec kokkaigijidomae sysctl -w net.ipv4.ip_forward=1
ip netns exec kokkaigijidomae sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec kokkaigijidomae ip addr add 10.254.2.14/32 dev lo
ip netns exec kokkaigijidomae ip addr add 10.5.6.20/24 dev c6
ip netns exec kokkaigijidomae ip addr add 10.5.7.10/24 dev c8
ip netns exec kokkaigijidomae ip addr add 10.2.13.20/24 dev m13
ip netns exec kokkaigijidomae ip addr add 10.2.14.10/24 dev m15

# set IP address: kasumigaseki
ip netns exec kasumigaseki sysctl -w net.ipv4.ip_forward=1
ip netns exec kasumigaseki sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec kasumigaseki ip addr add 10.254.2.15/32 dev lo
ip netns exec kasumigaseki ip addr add 10.5.7.20/24 dev c7
ip netns exec kasumigaseki ip addr add 10.5.8.10/24 dev c9
ip netns exec kasumigaseki ip addr add 10.3.6.20/24 dev h6
ip netns exec kasumigaseki ip addr add 10.3.7.10/24 dev h8
ip netns exec kasumigaseki ip addr add 10.2.14.20/24 dev m14
ip netns exec kasumigaseki ip addr add 10.2.15.10/24 dev m16

# set IP address: tokyo
ip netns exec tokyo sysctl -w net.ipv4.ip_forward=1
ip netns exec tokyo sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec tokyo ip addr add 10.254.2.17/32 dev lo
ip netns exec tokyo ip addr add 10.2.16.20/24 dev m16
ip netns exec tokyo ip addr add 10.2.17.10/24 dev m18

# set IP address: otemachi
ip netns exec otemachi sysctl -w net.ipv4.ip_forward=1
ip netns exec otemachi sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec otemachi ip addr add 10.254.2.18/32 dev lo
ip netns exec otemachi ip addr add 10.5.10.20/24 dev c10
ip netns exec otemachi ip addr add 10.5.11.10/24 dev c12
ip netns exec otemachi ip addr add 10.2.17.20/24 dev m17
ip netns exec otemachi ip addr add 10.2.18.10/24 dev m19
ip netns exec otemachi ip addr add 10.4.9.10/24 dev t10
ip netns exec otemachi ip addr add 10.4.8.20/24 dev t8
ip netns exec otemachi ip addr add 10.7.7.20/24 dev z7
ip netns exec otemachi ip addr add 10.7.8.10/24 dev z9

# set IP address: awajicho
ip netns exec awajicho sysctl -w net.ipv4.ip_forward=1
ip netns exec awajicho sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec awajicho ip addr add 10.254.2.19/32 dev lo
ip netns exec awajicho ip addr add 10.2.18.20/24 dev m18
ip netns exec awajicho ip addr add 10.2.19.10/24 dev m20

# set IP address: ochanomizu
ip netns exec ochanomizu sysctl -w net.ipv4.ip_forward=1
ip netns exec ochanomizu sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec ochanomizu ip addr add 10.254.2.20/32 dev lo
ip netns exec ochanomizu ip addr add 10.2.19.20/24 dev m19
ip netns exec ochanomizu ip addr add 10.2.20.10/24 dev m21

# set IP address: hongosanchome
ip netns exec hongosanchome sysctl -w net.ipv4.ip_forward=1
ip netns exec hongosanchome sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec hongosanchome ip addr add 10.254.2.21/32 dev lo
ip netns exec hongosanchome ip addr add 10.2.20.20/24 dev m20
ip netns exec hongosanchome ip addr add 10.2.21.10/24 dev m22

# set IP address: korakuen
ip netns exec korakuen sysctl -w net.ipv4.ip_forward=1
ip netns exec korakuen sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec korakuen ip addr add 10.254.2.22/32 dev lo
ip netns exec korakuen ip addr add 10.2.21.20/24 dev m21
ip netns exec korakuen ip addr add 10.2.22.10/24 dev m23
ip netns exec korakuen ip addr add 10.8.10.20/24 dev n10
ip netns exec korakuen ip addr add 10.8.11.10/24 dev n12

# set IP address: myogadani
ip netns exec myogadani sysctl -w net.ipv4.ip_forward=1
ip netns exec myogadani sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec myogadani ip addr add 10.254.2.23/32 dev lo
ip netns exec myogadani ip addr add 10.2.22.20/24 dev m22
ip netns exec myogadani ip addr add 10.2.23.10/24 dev m24

# set IP address: shinotsuka
ip netns exec shinotsuka sysctl -w net.ipv4.ip_forward=1
ip netns exec shinotsuka sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec shinotsuka ip addr add 10.254.2.24/32 dev lo
ip netns exec shinotsuka ip addr add 10.2.23.20/24 dev m23
ip netns exec shinotsuka ip addr add 10.2.24.10/24 dev m25

# set IP address: ikebukuro
ip netns exec ikebukuro sysctl -w net.ipv4.ip_forward=1
ip netns exec ikebukuro sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec ikebukuro ip addr add 10.254.2.25/32 dev lo
ip netns exec ikebukuro ip addr add 10.9.9.10/24 dev f10
ip netns exec ikebukuro ip addr add 10.9.8.20/24 dev f8
ip netns exec ikebukuro ip addr add 10.2.24.20/24 dev m24
ip netns exec ikebukuro ip addr add 10.6.9.10/24 dev y10
ip netns exec ikebukuro ip addr add 10.6.8.20/24 dev y8

# set IP address: kitasenju
ip netns exec kitasenju sysctl -w net.ipv4.ip_forward=1
ip netns exec kitasenju sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec kitasenju ip addr add 10.254.3.22/32 dev lo
ip netns exec kitasenju ip addr add 10.5.17.20/24 dev c17
ip netns exec kitasenju ip addr add 10.5.18.10/24 dev c19
ip netns exec kitasenju ip addr add 10.3.21.20/24 dev h21

# set IP address: minamisenju
ip netns exec minamisenju sysctl -w net.ipv4.ip_forward=1
ip netns exec minamisenju sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec minamisenju ip addr add 10.254.3.21/32 dev lo
ip netns exec minamisenju ip addr add 10.3.20.20/24 dev h20
ip netns exec minamisenju ip addr add 10.3.21.10/24 dev h22

# set IP address: minowa
ip netns exec minowa sysctl -w net.ipv4.ip_forward=1
ip netns exec minowa sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec minowa ip addr add 10.254.3.20/32 dev lo
ip netns exec minowa ip addr add 10.3.19.20/24 dev h19
ip netns exec minowa ip addr add 10.3.20.10/24 dev h21

# set IP address: iriya
ip netns exec iriya sysctl -w net.ipv4.ip_forward=1
ip netns exec iriya sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec iriya ip addr add 10.254.3.19/32 dev lo
ip netns exec iriya ip addr add 10.3.18.20/24 dev h18
ip netns exec iriya ip addr add 10.3.19.10/24 dev h20

# set IP address: nakaokachimachi
ip netns exec nakaokachimachi sysctl -w net.ipv4.ip_forward=1
ip netns exec nakaokachimachi sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec nakaokachimachi ip addr add 10.254.3.17/32 dev lo
ip netns exec nakaokachimachi ip addr add 10.3.16.20/24 dev h16
ip netns exec nakaokachimachi ip addr add 10.3.17.10/24 dev h18

# set IP address: akihabara
ip netns exec akihabara sysctl -w net.ipv4.ip_forward=1
ip netns exec akihabara sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec akihabara ip addr add 10.254.3.16/32 dev lo
ip netns exec akihabara ip addr add 10.3.15.20/24 dev h15
ip netns exec akihabara ip addr add 10.3.16.10/24 dev h17

# set IP address: kodemmacho
ip netns exec kodemmacho sysctl -w net.ipv4.ip_forward=1
ip netns exec kodemmacho sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec kodemmacho ip addr add 10.254.3.15/32 dev lo
ip netns exec kodemmacho ip addr add 10.3.14.20/24 dev h14
ip netns exec kodemmacho ip addr add 10.3.15.10/24 dev h16

# set IP address: ningyocho
ip netns exec ningyocho sysctl -w net.ipv4.ip_forward=1
ip netns exec ningyocho sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec ningyocho ip addr add 10.254.3.14/32 dev lo
ip netns exec ningyocho ip addr add 10.3.13.20/24 dev h13
ip netns exec ningyocho ip addr add 10.3.14.10/24 dev h15

# set IP address: kayabacho
ip netns exec kayabacho sysctl -w net.ipv4.ip_forward=1
ip netns exec kayabacho sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec kayabacho ip addr add 10.254.3.13/32 dev lo
ip netns exec kayabacho ip addr add 10.3.12.20/24 dev h12
ip netns exec kayabacho ip addr add 10.3.13.10/24 dev h14
ip netns exec kayabacho ip addr add 10.4.10.20/24 dev t10
ip netns exec kayabacho ip addr add 10.4.11.10/24 dev t12

# set IP address: hatchobori
ip netns exec hatchobori sysctl -w net.ipv4.ip_forward=1
ip netns exec hatchobori sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec hatchobori ip addr add 10.254.3.12/32 dev lo
ip netns exec hatchobori ip addr add 10.3.11.20/24 dev h11
ip netns exec hatchobori ip addr add 10.3.12.10/24 dev h13

# set IP address: tsukiji
ip netns exec tsukiji sysctl -w net.ipv4.ip_forward=1
ip netns exec tsukiji sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec tsukiji ip addr add 10.254.3.11/32 dev lo
ip netns exec tsukiji ip addr add 10.3.10.20/24 dev h10
ip netns exec tsukiji ip addr add 10.3.11.10/24 dev h12

# set IP address: higashiginza
ip netns exec higashiginza sysctl -w net.ipv4.ip_forward=1
ip netns exec higashiginza sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec higashiginza ip addr add 10.254.3.10/32 dev lo
ip netns exec higashiginza ip addr add 10.3.10.10/24 dev h11
ip netns exec higashiginza ip addr add 10.3.9.20/24 dev h9

# set IP address: hibiya
ip netns exec hibiya sysctl -w net.ipv4.ip_forward=1
ip netns exec hibiya sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec hibiya ip addr add 10.254.3.8/32 dev lo
ip netns exec hibiya ip addr add 10.5.9.10/24 dev c10
ip netns exec hibiya ip addr add 10.5.8.20/24 dev c8
ip netns exec hibiya ip addr add 10.3.7.20/24 dev h7
ip netns exec hibiya ip addr add 10.3.8.10/24 dev h9

# set IP address: toranomonhiruzu
ip netns exec toranomonhiruzu sysctl -w net.ipv4.ip_forward=1
ip netns exec toranomonhiruzu sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec toranomonhiruzu ip addr add 10.254.3.6/32 dev lo
ip netns exec toranomonhiruzu ip addr add 10.3.5.20/24 dev h5
ip netns exec toranomonhiruzu ip addr add 10.3.6.10/24 dev h7

# set IP address: kamiyacho
ip netns exec kamiyacho sysctl -w net.ipv4.ip_forward=1
ip netns exec kamiyacho sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec kamiyacho ip addr add 10.254.3.5/32 dev lo
ip netns exec kamiyacho ip addr add 10.3.4.20/24 dev h4
ip netns exec kamiyacho ip addr add 10.3.5.10/24 dev h6

# set IP address: roppongi
ip netns exec roppongi sysctl -w net.ipv4.ip_forward=1
ip netns exec roppongi sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec roppongi ip addr add 10.254.3.4/32 dev lo
ip netns exec roppongi ip addr add 10.3.3.20/24 dev h3
ip netns exec roppongi ip addr add 10.3.4.10/24 dev h5

# set IP address: hiroo
ip netns exec hiroo sysctl -w net.ipv4.ip_forward=1
ip netns exec hiroo sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec hiroo ip addr add 10.254.3.3/32 dev lo
ip netns exec hiroo ip addr add 10.3.2.20/24 dev h2
ip netns exec hiroo ip addr add 10.3.3.10/24 dev h4

# set IP address: ebisu
ip netns exec ebisu sysctl -w net.ipv4.ip_forward=1
ip netns exec ebisu sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec ebisu ip addr add 10.254.3.2/32 dev lo
ip netns exec ebisu ip addr add 10.3.1.20/24 dev h1
ip netns exec ebisu ip addr add 10.3.2.10/24 dev h3

# set IP address: nakameguro
ip netns exec nakameguro sysctl -w net.ipv4.ip_forward=1
ip netns exec nakameguro sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec nakameguro ip addr add 10.254.3.1/32 dev lo
ip netns exec nakameguro ip addr add 10.3.1.10/24 dev h2

# set IP address: nakano
ip netns exec nakano sysctl -w net.ipv4.ip_forward=1
ip netns exec nakano sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec nakano ip addr add 10.254.4.1/32 dev lo
ip netns exec nakano ip addr add 10.4.1.10/24 dev t2

# set IP address: ochiai
ip netns exec ochiai sysctl -w net.ipv4.ip_forward=1
ip netns exec ochiai sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec ochiai ip addr add 10.254.4.2/32 dev lo
ip netns exec ochiai ip addr add 10.4.1.20/24 dev t1
ip netns exec ochiai ip addr add 10.4.2.10/24 dev t3

# set IP address: takadanobaba
ip netns exec takadanobaba sysctl -w net.ipv4.ip_forward=1
ip netns exec takadanobaba sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec takadanobaba ip addr add 10.254.4.3/32 dev lo
ip netns exec takadanobaba ip addr add 10.4.2.20/24 dev t2
ip netns exec takadanobaba ip addr add 10.4.3.10/24 dev t4

# set IP address: waseda
ip netns exec waseda sysctl -w net.ipv4.ip_forward=1
ip netns exec waseda sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec waseda ip addr add 10.254.4.4/32 dev lo
ip netns exec waseda ip addr add 10.4.3.20/24 dev t3
ip netns exec waseda ip addr add 10.4.4.10/24 dev t5

# set IP address: kagurazaka
ip netns exec kagurazaka sysctl -w net.ipv4.ip_forward=1
ip netns exec kagurazaka sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec kagurazaka ip addr add 10.254.4.5/32 dev lo
ip netns exec kagurazaka ip addr add 10.4.4.20/24 dev t4
ip netns exec kagurazaka ip addr add 10.4.5.10/24 dev t6

# set IP address: iidabashi
ip netns exec iidabashi sysctl -w net.ipv4.ip_forward=1
ip netns exec iidabashi sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec iidabashi ip addr add 10.254.4.6/32 dev lo
ip netns exec iidabashi ip addr add 10.8.10.10/24 dev n11
ip netns exec iidabashi ip addr add 10.8.9.20/24 dev n9
ip netns exec iidabashi ip addr add 10.4.5.20/24 dev t5
ip netns exec iidabashi ip addr add 10.4.6.10/24 dev t7
ip netns exec iidabashi ip addr add 10.6.12.20/24 dev y12
ip netns exec iidabashi ip addr add 10.6.13.10/24 dev y14

# set IP address: kudanshita
ip netns exec kudanshita sysctl -w net.ipv4.ip_forward=1
ip netns exec kudanshita sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec kudanshita ip addr add 10.254.4.7/32 dev lo
ip netns exec kudanshita ip addr add 10.4.6.20/24 dev t6
ip netns exec kudanshita ip addr add 10.4.7.10/24 dev t8
ip netns exec kudanshita ip addr add 10.7.5.20/24 dev z5
ip netns exec kudanshita ip addr add 10.7.6.10/24 dev z7

# set IP address: takebashi
ip netns exec takebashi sysctl -w net.ipv4.ip_forward=1
ip netns exec takebashi sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec takebashi ip addr add 10.254.4.8/32 dev lo
ip netns exec takebashi ip addr add 10.4.7.20/24 dev t7
ip netns exec takebashi ip addr add 10.4.8.10/24 dev t9

# set IP address: monzennakacho
ip netns exec monzennakacho sysctl -w net.ipv4.ip_forward=1
ip netns exec monzennakacho sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec monzennakacho ip addr add 10.254.4.12/32 dev lo
ip netns exec monzennakacho ip addr add 10.4.11.20/24 dev t11
ip netns exec monzennakacho ip addr add 10.4.12.10/24 dev t13

# set IP address: kiba
ip netns exec kiba sysctl -w net.ipv4.ip_forward=1
ip netns exec kiba sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec kiba ip addr add 10.254.4.13/32 dev lo
ip netns exec kiba ip addr add 10.4.12.20/24 dev t12
ip netns exec kiba ip addr add 10.4.13.10/24 dev t14

# set IP address: toyocho
ip netns exec toyocho sysctl -w net.ipv4.ip_forward=1
ip netns exec toyocho sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec toyocho ip addr add 10.254.4.14/32 dev lo
ip netns exec toyocho ip addr add 10.4.13.20/24 dev t13
ip netns exec toyocho ip addr add 10.4.14.10/24 dev t15

# set IP address: minamisunamachi
ip netns exec minamisunamachi sysctl -w net.ipv4.ip_forward=1
ip netns exec minamisunamachi sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec minamisunamachi ip addr add 10.254.4.15/32 dev lo
ip netns exec minamisunamachi ip addr add 10.4.14.20/24 dev t14
ip netns exec minamisunamachi ip addr add 10.4.15.10/24 dev t16

# set IP address: nishikasai
ip netns exec nishikasai sysctl -w net.ipv4.ip_forward=1
ip netns exec nishikasai sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec nishikasai ip addr add 10.254.4.16/32 dev lo
ip netns exec nishikasai ip addr add 10.4.15.20/24 dev t15
ip netns exec nishikasai ip addr add 10.4.16.10/24 dev t17

# set IP address: kasai
ip netns exec kasai sysctl -w net.ipv4.ip_forward=1
ip netns exec kasai sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec kasai ip addr add 10.254.4.17/32 dev lo
ip netns exec kasai ip addr add 10.4.16.20/24 dev t16
ip netns exec kasai ip addr add 10.4.17.10/24 dev t18

# set IP address: urayasu
ip netns exec urayasu sysctl -w net.ipv4.ip_forward=1
ip netns exec urayasu sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec urayasu ip addr add 10.254.4.18/32 dev lo
ip netns exec urayasu ip addr add 10.4.17.20/24 dev t17
ip netns exec urayasu ip addr add 10.4.18.10/24 dev t19

# set IP address: minamigyotoku
ip netns exec minamigyotoku sysctl -w net.ipv4.ip_forward=1
ip netns exec minamigyotoku sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec minamigyotoku ip addr add 10.254.4.19/32 dev lo
ip netns exec minamigyotoku ip addr add 10.4.18.20/24 dev t18
ip netns exec minamigyotoku ip addr add 10.4.19.10/24 dev t20

# set IP address: gyotoku
ip netns exec gyotoku sysctl -w net.ipv4.ip_forward=1
ip netns exec gyotoku sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec gyotoku ip addr add 10.254.4.20/32 dev lo
ip netns exec gyotoku ip addr add 10.4.19.20/24 dev t19
ip netns exec gyotoku ip addr add 10.4.20.10/24 dev t21

# set IP address: myoden
ip netns exec myoden sysctl -w net.ipv4.ip_forward=1
ip netns exec myoden sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec myoden ip addr add 10.254.4.21/32 dev lo
ip netns exec myoden ip addr add 10.4.20.20/24 dev t20
ip netns exec myoden ip addr add 10.4.21.10/24 dev t22

# set IP address: barakinakayama
ip netns exec barakinakayama sysctl -w net.ipv4.ip_forward=1
ip netns exec barakinakayama sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec barakinakayama ip addr add 10.254.4.22/32 dev lo
ip netns exec barakinakayama ip addr add 10.4.21.20/24 dev t21
ip netns exec barakinakayama ip addr add 10.4.22.10/24 dev t23

# set IP address: nishifunabashi
ip netns exec nishifunabashi sysctl -w net.ipv4.ip_forward=1
ip netns exec nishifunabashi sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec nishifunabashi ip addr add 10.254.4.23/32 dev lo
ip netns exec nishifunabashi ip addr add 10.4.22.20/24 dev t22

# set IP address: kitaayase
ip netns exec kitaayase sysctl -w net.ipv4.ip_forward=1
ip netns exec kitaayase sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec kitaayase ip addr add 10.254.5.20/32 dev lo
ip netns exec kitaayase ip addr add 10.5.19.20/24 dev c19

# set IP address: ayase
ip netns exec ayase sysctl -w net.ipv4.ip_forward=1
ip netns exec ayase sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec ayase ip addr add 10.254.5.19/32 dev lo
ip netns exec ayase ip addr add 10.5.18.20/24 dev c18
ip netns exec ayase ip addr add 10.5.19.10/24 dev c20

# set IP address: machiya
ip netns exec machiya sysctl -w net.ipv4.ip_forward=1
ip netns exec machiya sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec machiya ip addr add 10.254.5.17/32 dev lo
ip netns exec machiya ip addr add 10.5.16.20/24 dev c16
ip netns exec machiya ip addr add 10.5.17.10/24 dev c18

# set IP address: nishinippori
ip netns exec nishinippori sysctl -w net.ipv4.ip_forward=1
ip netns exec nishinippori sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec nishinippori ip addr add 10.254.5.16/32 dev lo
ip netns exec nishinippori ip addr add 10.5.15.20/24 dev c15
ip netns exec nishinippori ip addr add 10.5.16.10/24 dev c17

# set IP address: sendagi
ip netns exec sendagi sysctl -w net.ipv4.ip_forward=1
ip netns exec sendagi sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec sendagi ip addr add 10.254.5.15/32 dev lo
ip netns exec sendagi ip addr add 10.5.14.20/24 dev c14
ip netns exec sendagi ip addr add 10.5.15.10/24 dev c16

# set IP address: nezu
ip netns exec nezu sysctl -w net.ipv4.ip_forward=1
ip netns exec nezu sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec nezu ip addr add 10.254.5.14/32 dev lo
ip netns exec nezu ip addr add 10.5.13.20/24 dev c13
ip netns exec nezu ip addr add 10.5.14.10/24 dev c15

# set IP address: yushima
ip netns exec yushima sysctl -w net.ipv4.ip_forward=1
ip netns exec yushima sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec yushima ip addr add 10.254.5.13/32 dev lo
ip netns exec yushima ip addr add 10.5.12.20/24 dev c12
ip netns exec yushima ip addr add 10.5.13.10/24 dev c14

# set IP address: shinochanomizu
ip netns exec shinochanomizu sysctl -w net.ipv4.ip_forward=1
ip netns exec shinochanomizu sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec shinochanomizu ip addr add 10.254.5.12/32 dev lo
ip netns exec shinochanomizu ip addr add 10.5.11.20/24 dev c11
ip netns exec shinochanomizu ip addr add 10.5.12.10/24 dev c13

# set IP address: nijubashimae
ip netns exec nijubashimae sysctl -w net.ipv4.ip_forward=1
ip netns exec nijubashimae sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec nijubashimae ip addr add 10.254.5.10/32 dev lo
ip netns exec nijubashimae ip addr add 10.5.10.10/24 dev c11
ip netns exec nijubashimae ip addr add 10.5.9.20/24 dev c9

# set IP address: akasaka
ip netns exec akasaka sysctl -w net.ipv4.ip_forward=1
ip netns exec akasaka sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec akasaka ip addr add 10.254.5.6/32 dev lo
ip netns exec akasaka ip addr add 10.5.5.20/24 dev c5
ip netns exec akasaka ip addr add 10.5.6.10/24 dev c7

# set IP address: nogizaka
ip netns exec nogizaka sysctl -w net.ipv4.ip_forward=1
ip netns exec nogizaka sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec nogizaka ip addr add 10.254.5.5/32 dev lo
ip netns exec nogizaka ip addr add 10.5.4.20/24 dev c4
ip netns exec nogizaka ip addr add 10.5.5.10/24 dev c6

# set IP address: meijijingumae
ip netns exec meijijingumae sysctl -w net.ipv4.ip_forward=1
ip netns exec meijijingumae sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec meijijingumae ip addr add 10.254.5.3/32 dev lo
ip netns exec meijijingumae ip addr add 10.5.2.20/24 dev c2
ip netns exec meijijingumae ip addr add 10.5.3.10/24 dev c4
ip netns exec meijijingumae ip addr add 10.9.14.20/24 dev f14
ip netns exec meijijingumae ip addr add 10.9.15.10/24 dev f16

# set IP address: yoyogikoen
ip netns exec yoyogikoen sysctl -w net.ipv4.ip_forward=1
ip netns exec yoyogikoen sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec yoyogikoen ip addr add 10.254.5.2/32 dev lo
ip netns exec yoyogikoen ip addr add 10.5.1.20/24 dev c1
ip netns exec yoyogikoen ip addr add 10.5.2.10/24 dev c3

# set IP address: yoyogiuehara
ip netns exec yoyogiuehara sysctl -w net.ipv4.ip_forward=1
ip netns exec yoyogiuehara sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec yoyogiuehara ip addr add 10.254.5.1/32 dev lo
ip netns exec yoyogiuehara ip addr add 10.5.1.10/24 dev c2

# set IP address: wakoshi
ip netns exec wakoshi sysctl -w net.ipv4.ip_forward=1
ip netns exec wakoshi sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec wakoshi ip addr add 10.254.6.1/32 dev lo
ip netns exec wakoshi ip addr add 10.9.1.10/24 dev f2
ip netns exec wakoshi ip addr add 10.6.1.10/24 dev y2

# set IP address: chikatetsunarimasu
ip netns exec chikatetsunarimasu sysctl -w net.ipv4.ip_forward=1
ip netns exec chikatetsunarimasu sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec chikatetsunarimasu ip addr add 10.254.6.2/32 dev lo
ip netns exec chikatetsunarimasu ip addr add 10.9.1.20/24 dev f1
ip netns exec chikatetsunarimasu ip addr add 10.9.2.10/24 dev f3
ip netns exec chikatetsunarimasu ip addr add 10.6.1.20/24 dev y1
ip netns exec chikatetsunarimasu ip addr add 10.6.2.10/24 dev y3

# set IP address: chikatetsuakatsuka
ip netns exec chikatetsuakatsuka sysctl -w net.ipv4.ip_forward=1
ip netns exec chikatetsuakatsuka sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec chikatetsuakatsuka ip addr add 10.254.6.3/32 dev lo
ip netns exec chikatetsuakatsuka ip addr add 10.9.2.20/24 dev f2
ip netns exec chikatetsuakatsuka ip addr add 10.9.3.10/24 dev f4
ip netns exec chikatetsuakatsuka ip addr add 10.6.2.20/24 dev y2
ip netns exec chikatetsuakatsuka ip addr add 10.6.3.10/24 dev y4

# set IP address: heiwadai
ip netns exec heiwadai sysctl -w net.ipv4.ip_forward=1
ip netns exec heiwadai sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec heiwadai ip addr add 10.254.6.4/32 dev lo
ip netns exec heiwadai ip addr add 10.9.3.20/24 dev f3
ip netns exec heiwadai ip addr add 10.9.4.10/24 dev f5
ip netns exec heiwadai ip addr add 10.6.3.20/24 dev y3
ip netns exec heiwadai ip addr add 10.6.4.10/24 dev y5

# set IP address: hikawadai
ip netns exec hikawadai sysctl -w net.ipv4.ip_forward=1
ip netns exec hikawadai sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec hikawadai ip addr add 10.254.6.5/32 dev lo
ip netns exec hikawadai ip addr add 10.9.4.20/24 dev f4
ip netns exec hikawadai ip addr add 10.9.5.10/24 dev f6
ip netns exec hikawadai ip addr add 10.6.4.20/24 dev y4
ip netns exec hikawadai ip addr add 10.6.5.10/24 dev y6

# set IP address: kotakemukaihara
ip netns exec kotakemukaihara sysctl -w net.ipv4.ip_forward=1
ip netns exec kotakemukaihara sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec kotakemukaihara ip addr add 10.254.6.6/32 dev lo
ip netns exec kotakemukaihara ip addr add 10.9.5.20/24 dev f5
ip netns exec kotakemukaihara ip addr add 10.9.6.10/24 dev f7
ip netns exec kotakemukaihara ip addr add 10.6.5.20/24 dev y5
ip netns exec kotakemukaihara ip addr add 10.6.6.10/24 dev y7

# set IP address: senkawa
ip netns exec senkawa sysctl -w net.ipv4.ip_forward=1
ip netns exec senkawa sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec senkawa ip addr add 10.254.6.7/32 dev lo
ip netns exec senkawa ip addr add 10.9.6.20/24 dev f6
ip netns exec senkawa ip addr add 10.9.7.10/24 dev f8
ip netns exec senkawa ip addr add 10.6.6.20/24 dev y6
ip netns exec senkawa ip addr add 10.6.7.10/24 dev y8

# set IP address: kanamecho
ip netns exec kanamecho sysctl -w net.ipv4.ip_forward=1
ip netns exec kanamecho sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec kanamecho ip addr add 10.254.6.8/32 dev lo
ip netns exec kanamecho ip addr add 10.9.7.20/24 dev f7
ip netns exec kanamecho ip addr add 10.9.8.10/24 dev f9
ip netns exec kanamecho ip addr add 10.6.7.20/24 dev y7
ip netns exec kanamecho ip addr add 10.6.8.10/24 dev y9

# set IP address: higashiikebukuro
ip netns exec higashiikebukuro sysctl -w net.ipv4.ip_forward=1
ip netns exec higashiikebukuro sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec higashiikebukuro ip addr add 10.254.6.10/32 dev lo
ip netns exec higashiikebukuro ip addr add 10.6.10.10/24 dev y11
ip netns exec higashiikebukuro ip addr add 10.6.9.20/24 dev y9

# set IP address: gokokuji
ip netns exec gokokuji sysctl -w net.ipv4.ip_forward=1
ip netns exec gokokuji sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec gokokuji ip addr add 10.254.6.11/32 dev lo
ip netns exec gokokuji ip addr add 10.6.10.20/24 dev y10
ip netns exec gokokuji ip addr add 10.6.11.10/24 dev y12

# set IP address: edogawabashi
ip netns exec edogawabashi sysctl -w net.ipv4.ip_forward=1
ip netns exec edogawabashi sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec edogawabashi ip addr add 10.254.6.12/32 dev lo
ip netns exec edogawabashi ip addr add 10.6.11.20/24 dev y11
ip netns exec edogawabashi ip addr add 10.6.12.10/24 dev y13

# set IP address: ichigaya
ip netns exec ichigaya sysctl -w net.ipv4.ip_forward=1
ip netns exec ichigaya sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec ichigaya ip addr add 10.254.6.14/32 dev lo
ip netns exec ichigaya ip addr add 10.8.9.10/24 dev n10
ip netns exec ichigaya ip addr add 10.8.8.20/24 dev n8
ip netns exec ichigaya ip addr add 10.6.13.20/24 dev y13
ip netns exec ichigaya ip addr add 10.6.14.10/24 dev y15

# set IP address: kojimachi
ip netns exec kojimachi sysctl -w net.ipv4.ip_forward=1
ip netns exec kojimachi sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec kojimachi ip addr add 10.254.6.15/32 dev lo
ip netns exec kojimachi ip addr add 10.6.14.20/24 dev y14
ip netns exec kojimachi ip addr add 10.6.15.10/24 dev y16

# set IP address: nagatacho
ip netns exec nagatacho sysctl -w net.ipv4.ip_forward=1
ip netns exec nagatacho sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec nagatacho ip addr add 10.254.6.16/32 dev lo
ip netns exec nagatacho ip addr add 10.8.6.20/24 dev n6
ip netns exec nagatacho ip addr add 10.8.7.10/24 dev n8
ip netns exec nagatacho ip addr add 10.6.15.20/24 dev y15
ip netns exec nagatacho ip addr add 10.6.16.10/24 dev y17
ip netns exec nagatacho ip addr add 10.7.3.20/24 dev z3
ip netns exec nagatacho ip addr add 10.7.4.10/24 dev z5

# set IP address: sakuradamon
ip netns exec sakuradamon sysctl -w net.ipv4.ip_forward=1
ip netns exec sakuradamon sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec sakuradamon ip addr add 10.254.6.17/32 dev lo
ip netns exec sakuradamon ip addr add 10.6.16.20/24 dev y16
ip netns exec sakuradamon ip addr add 10.6.17.10/24 dev y18

# set IP address: yurakucho
ip netns exec yurakucho sysctl -w net.ipv4.ip_forward=1
ip netns exec yurakucho sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec yurakucho ip addr add 10.254.6.18/32 dev lo
ip netns exec yurakucho ip addr add 10.6.17.20/24 dev y17
ip netns exec yurakucho ip addr add 10.6.18.10/24 dev y19

# set IP address: ginzaicchome
ip netns exec ginzaicchome sysctl -w net.ipv4.ip_forward=1
ip netns exec ginzaicchome sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec ginzaicchome ip addr add 10.254.6.19/32 dev lo
ip netns exec ginzaicchome ip addr add 10.6.18.20/24 dev y18
ip netns exec ginzaicchome ip addr add 10.6.19.10/24 dev y20

# set IP address: shintomicho
ip netns exec shintomicho sysctl -w net.ipv4.ip_forward=1
ip netns exec shintomicho sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec shintomicho ip addr add 10.254.6.20/32 dev lo
ip netns exec shintomicho ip addr add 10.6.19.20/24 dev y19
ip netns exec shintomicho ip addr add 10.6.20.10/24 dev y21

# set IP address: tsukishima
ip netns exec tsukishima sysctl -w net.ipv4.ip_forward=1
ip netns exec tsukishima sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec tsukishima ip addr add 10.254.6.21/32 dev lo
ip netns exec tsukishima ip addr add 10.6.20.20/24 dev y20
ip netns exec tsukishima ip addr add 10.6.21.10/24 dev y22

# set IP address: toyosu
ip netns exec toyosu sysctl -w net.ipv4.ip_forward=1
ip netns exec toyosu sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec toyosu ip addr add 10.254.6.22/32 dev lo
ip netns exec toyosu ip addr add 10.6.21.20/24 dev y21
ip netns exec toyosu ip addr add 10.6.22.10/24 dev y23

# set IP address: tatsumi
ip netns exec tatsumi sysctl -w net.ipv4.ip_forward=1
ip netns exec tatsumi sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec tatsumi ip addr add 10.254.6.23/32 dev lo
ip netns exec tatsumi ip addr add 10.6.22.20/24 dev y22
ip netns exec tatsumi ip addr add 10.6.23.10/24 dev y24

# set IP address: shinkiba
ip netns exec shinkiba sysctl -w net.ipv4.ip_forward=1
ip netns exec shinkiba sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec shinkiba ip addr add 10.254.6.24/32 dev lo
ip netns exec shinkiba ip addr add 10.6.23.20/24 dev y23

# set IP address: hanzomon
ip netns exec hanzomon sysctl -w net.ipv4.ip_forward=1
ip netns exec hanzomon sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec hanzomon ip addr add 10.254.7.5/32 dev lo
ip netns exec hanzomon ip addr add 10.7.4.20/24 dev z4
ip netns exec hanzomon ip addr add 10.7.5.10/24 dev z6

# set IP address: jimbocho
ip netns exec jimbocho sysctl -w net.ipv4.ip_forward=1
ip netns exec jimbocho sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec jimbocho ip addr add 10.254.7.7/32 dev lo
ip netns exec jimbocho ip addr add 10.7.6.20/24 dev z6
ip netns exec jimbocho ip addr add 10.7.7.10/24 dev z8

# set IP address: suitengumae
ip netns exec suitengumae sysctl -w net.ipv4.ip_forward=1
ip netns exec suitengumae sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec suitengumae ip addr add 10.254.7.10/32 dev lo
ip netns exec suitengumae ip addr add 10.7.10.10/24 dev z11
ip netns exec suitengumae ip addr add 10.7.9.20/24 dev z9

# set IP address: kiyosumishirakawa
ip netns exec kiyosumishirakawa sysctl -w net.ipv4.ip_forward=1
ip netns exec kiyosumishirakawa sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec kiyosumishirakawa ip addr add 10.254.7.11/32 dev lo
ip netns exec kiyosumishirakawa ip addr add 10.7.10.20/24 dev z10
ip netns exec kiyosumishirakawa ip addr add 10.7.11.10/24 dev z12

# set IP address: sumiyoshi
ip netns exec sumiyoshi sysctl -w net.ipv4.ip_forward=1
ip netns exec sumiyoshi sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec sumiyoshi ip addr add 10.254.7.12/32 dev lo
ip netns exec sumiyoshi ip addr add 10.7.11.20/24 dev z11
ip netns exec sumiyoshi ip addr add 10.7.12.10/24 dev z13

# set IP address: kinshicho
ip netns exec kinshicho sysctl -w net.ipv4.ip_forward=1
ip netns exec kinshicho sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec kinshicho ip addr add 10.254.7.13/32 dev lo
ip netns exec kinshicho ip addr add 10.7.12.20/24 dev z12
ip netns exec kinshicho ip addr add 10.7.13.10/24 dev z14

# set IP address: oshiage
ip netns exec oshiage sysctl -w net.ipv4.ip_forward=1
ip netns exec oshiage sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec oshiage ip addr add 10.254.7.14/32 dev lo
ip netns exec oshiage ip addr add 10.7.13.20/24 dev z13

# set IP address: akabaneiwabuchi
ip netns exec akabaneiwabuchi sysctl -w net.ipv4.ip_forward=1
ip netns exec akabaneiwabuchi sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec akabaneiwabuchi ip addr add 10.254.8.19/32 dev lo
ip netns exec akabaneiwabuchi ip addr add 10.8.18.20/24 dev n18

# set IP address: shimo
ip netns exec shimo sysctl -w net.ipv4.ip_forward=1
ip netns exec shimo sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec shimo ip addr add 10.254.8.18/32 dev lo
ip netns exec shimo ip addr add 10.8.17.20/24 dev n17
ip netns exec shimo ip addr add 10.8.18.10/24 dev n19

# set IP address: ojikamiya
ip netns exec ojikamiya sysctl -w net.ipv4.ip_forward=1
ip netns exec ojikamiya sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec ojikamiya ip addr add 10.254.8.17/32 dev lo
ip netns exec ojikamiya ip addr add 10.8.16.20/24 dev n16
ip netns exec ojikamiya ip addr add 10.8.17.10/24 dev n18

# set IP address: oji
ip netns exec oji sysctl -w net.ipv4.ip_forward=1
ip netns exec oji sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec oji ip addr add 10.254.8.16/32 dev lo
ip netns exec oji ip addr add 10.8.15.20/24 dev n15
ip netns exec oji ip addr add 10.8.16.10/24 dev n17

# set IP address: nishigahara
ip netns exec nishigahara sysctl -w net.ipv4.ip_forward=1
ip netns exec nishigahara sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec nishigahara ip addr add 10.254.8.15/32 dev lo
ip netns exec nishigahara ip addr add 10.8.14.20/24 dev n14
ip netns exec nishigahara ip addr add 10.8.15.10/24 dev n16

# set IP address: komagome
ip netns exec komagome sysctl -w net.ipv4.ip_forward=1
ip netns exec komagome sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec komagome ip addr add 10.254.8.14/32 dev lo
ip netns exec komagome ip addr add 10.8.13.20/24 dev n13
ip netns exec komagome ip addr add 10.8.14.10/24 dev n15

# set IP address: honkomagome
ip netns exec honkomagome sysctl -w net.ipv4.ip_forward=1
ip netns exec honkomagome sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec honkomagome ip addr add 10.254.8.13/32 dev lo
ip netns exec honkomagome ip addr add 10.8.12.20/24 dev n12
ip netns exec honkomagome ip addr add 10.8.13.10/24 dev n14

# set IP address: todaimae
ip netns exec todaimae sysctl -w net.ipv4.ip_forward=1
ip netns exec todaimae sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec todaimae ip addr add 10.254.8.12/32 dev lo
ip netns exec todaimae ip addr add 10.8.11.20/24 dev n11
ip netns exec todaimae ip addr add 10.8.12.10/24 dev n13

# set IP address: roppongiicchome
ip netns exec roppongiicchome sysctl -w net.ipv4.ip_forward=1
ip netns exec roppongiicchome sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec roppongiicchome ip addr add 10.254.8.5/32 dev lo
ip netns exec roppongiicchome ip addr add 10.8.4.20/24 dev n4
ip netns exec roppongiicchome ip addr add 10.8.5.10/24 dev n6

# set IP address: azabujuban
ip netns exec azabujuban sysctl -w net.ipv4.ip_forward=1
ip netns exec azabujuban sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec azabujuban ip addr add 10.254.8.4/32 dev lo
ip netns exec azabujuban ip addr add 10.8.3.20/24 dev n3
ip netns exec azabujuban ip addr add 10.8.4.10/24 dev n5

# set IP address: shirakanetakanawa
ip netns exec shirakanetakanawa sysctl -w net.ipv4.ip_forward=1
ip netns exec shirakanetakanawa sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec shirakanetakanawa ip addr add 10.254.8.3/32 dev lo
ip netns exec shirakanetakanawa ip addr add 10.8.2.20/24 dev n2
ip netns exec shirakanetakanawa ip addr add 10.8.3.10/24 dev n4

# set IP address: shiroganedai
ip netns exec shiroganedai sysctl -w net.ipv4.ip_forward=1
ip netns exec shiroganedai sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec shiroganedai ip addr add 10.254.8.2/32 dev lo
ip netns exec shiroganedai ip addr add 10.8.1.20/24 dev n1
ip netns exec shiroganedai ip addr add 10.8.2.10/24 dev n3

# set IP address: meguro
ip netns exec meguro sysctl -w net.ipv4.ip_forward=1
ip netns exec meguro sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec meguro ip addr add 10.254.8.1/32 dev lo
ip netns exec meguro ip addr add 10.8.1.10/24 dev n2

# set IP address: zoshigaya
ip netns exec zoshigaya sysctl -w net.ipv4.ip_forward=1
ip netns exec zoshigaya sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec zoshigaya ip addr add 10.254.9.10/32 dev lo
ip netns exec zoshigaya ip addr add 10.9.10.10/24 dev f11
ip netns exec zoshigaya ip addr add 10.9.9.20/24 dev f9

# set IP address: nishiwaseda
ip netns exec nishiwaseda sysctl -w net.ipv4.ip_forward=1
ip netns exec nishiwaseda sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec nishiwaseda ip addr add 10.254.9.11/32 dev lo
ip netns exec nishiwaseda ip addr add 10.9.10.20/24 dev f10
ip netns exec nishiwaseda ip addr add 10.9.11.10/24 dev f12

# set IP address: higashishinjuku
ip netns exec higashishinjuku sysctl -w net.ipv4.ip_forward=1
ip netns exec higashishinjuku sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec higashishinjuku ip addr add 10.254.9.12/32 dev lo
ip netns exec higashishinjuku ip addr add 10.9.11.20/24 dev f11
ip netns exec higashishinjuku ip addr add 10.9.12.10/24 dev f13

# set IP address: kitasando
ip netns exec kitasando sysctl -w net.ipv4.ip_forward=1
ip netns exec kitasando sysctl -w net.ipv4.icmp_ratemask=0
ip netns exec kitasando ip addr add 10.254.9.14/32 dev lo
ip netns exec kitasando ip addr add 10.9.13.20/24 dev f13
ip netns exec kitasando ip addr add 10.9.14.10/24 dev f15

# linkup & set routes (routes can not be set before linkup.)
ip netns exec honancho ip link set lo up
ip netns exec honancho ip link set m27 up

ip netns exec nakanofujimicho ip link set lo up
ip netns exec nakanofujimicho ip link set m26 up
ip netns exec nakanofujimicho ip link set m28 up

ip netns exec nakanoshimbashi ip link set lo up
ip netns exec nakanoshimbashi ip link set m27 up
ip netns exec nakanoshimbashi ip link set m6 up

ip netns exec asakusa ip link set lo up
ip netns exec asakusa ip link set g18 up

ip netns exec tawaramachi ip link set lo up
ip netns exec tawaramachi ip link set g19 up
ip netns exec tawaramachi ip link set g17 up

ip netns exec inaricho ip link set lo up
ip netns exec inaricho ip link set g18 up
ip netns exec inaricho ip link set g16 up

ip netns exec ueno ip link set lo up
ip netns exec ueno ip link set g17 up
ip netns exec ueno ip link set g15 up
ip netns exec ueno ip link set h19 up
ip netns exec ueno ip link set h17 up

ip netns exec uenohirokoji ip link set lo up
ip netns exec uenohirokoji ip link set g16 up
ip netns exec uenohirokoji ip link set g14 up

ip netns exec suehirocho ip link set lo up
ip netns exec suehirocho ip link set g15 up
ip netns exec suehirocho ip link set g13 up

ip netns exec kanda ip link set lo up
ip netns exec kanda ip link set g14 up
ip netns exec kanda ip link set g12 up

ip netns exec mitsukoshimae ip link set lo up
ip netns exec mitsukoshimae ip link set g13 up
ip netns exec mitsukoshimae ip link set g11 up
ip netns exec mitsukoshimae ip link set z8 up
ip netns exec mitsukoshimae ip link set z10 up

ip netns exec nihombashi ip link set lo up
ip netns exec nihombashi ip link set g12 up
ip netns exec nihombashi ip link set g10 up
ip netns exec nihombashi ip link set t9 up
ip netns exec nihombashi ip link set t11 up

ip netns exec kyobashi ip link set lo up
ip netns exec kyobashi ip link set g11 up
ip netns exec kyobashi ip link set g9 up

ip netns exec ginza ip link set lo up
ip netns exec ginza ip link set g10 up
ip netns exec ginza ip link set g8 up
ip netns exec ginza ip link set m15 up
ip netns exec ginza ip link set m17 up
ip netns exec ginza ip link set h10 up
ip netns exec ginza ip link set h8 up

ip netns exec shimbashi ip link set lo up
ip netns exec shimbashi ip link set g9 up
ip netns exec shimbashi ip link set g7 up

ip netns exec toranomon ip link set lo up
ip netns exec toranomon ip link set g8 up
ip netns exec toranomon ip link set g6 up

ip netns exec tameikesanno ip link set lo up
ip netns exec tameikesanno ip link set g7 up
ip netns exec tameikesanno ip link set g5 up
ip netns exec tameikesanno ip link set n7 up
ip netns exec tameikesanno ip link set n5 up

ip netns exec akasakamitsuke ip link set lo up
ip netns exec akasakamitsuke ip link set g6 up
ip netns exec akasakamitsuke ip link set g4 up
ip netns exec akasakamitsuke ip link set m12 up
ip netns exec akasakamitsuke ip link set m14 up

ip netns exec aoyamaicchome ip link set lo up
ip netns exec aoyamaicchome ip link set g5 up
ip netns exec aoyamaicchome ip link set g3 up
ip netns exec aoyamaicchome ip link set z2 up
ip netns exec aoyamaicchome ip link set z4 up

ip netns exec gaiemmae ip link set lo up
ip netns exec gaiemmae ip link set g4 up
ip netns exec gaiemmae ip link set g2 up

ip netns exec omotesando ip link set lo up
ip netns exec omotesando ip link set g3 up
ip netns exec omotesando ip link set g1 up
ip netns exec omotesando ip link set c5 up
ip netns exec omotesando ip link set c3 up
ip netns exec omotesando ip link set z1 up
ip netns exec omotesando ip link set z3 up

ip netns exec shibuya ip link set lo up
ip netns exec shibuya ip link set g2 up
ip netns exec shibuya ip link set z2 up
ip netns exec shibuya ip link set f15 up

ip netns exec ogikubo ip link set lo up
ip netns exec ogikubo ip link set m2 up

ip netns exec minamiasagaya ip link set lo up
ip netns exec minamiasagaya ip link set m1 up
ip netns exec minamiasagaya ip link set m3 up

ip netns exec shinkoenji ip link set lo up
ip netns exec shinkoenji ip link set m2 up
ip netns exec shinkoenji ip link set m4 up

ip netns exec higashikoenji ip link set lo up
ip netns exec higashikoenji ip link set m3 up
ip netns exec higashikoenji ip link set m5 up

ip netns exec shinnakano ip link set lo up
ip netns exec shinnakano ip link set m4 up
ip netns exec shinnakano ip link set m6 up

ip netns exec nakanosakaue ip link set lo up
ip netns exec nakanosakaue ip link set m28 up
ip netns exec nakanosakaue ip link set m5 up
ip netns exec nakanosakaue ip link set m7 up

ip netns exec nishishinjuku ip link set lo up
ip netns exec nishishinjuku ip link set m6 up
ip netns exec nishishinjuku ip link set m8 up

ip netns exec shinjuku ip link set lo up
ip netns exec shinjuku ip link set m7 up
ip netns exec shinjuku ip link set m9 up

ip netns exec shinjukusanchome ip link set lo up
ip netns exec shinjukusanchome ip link set m8 up
ip netns exec shinjukusanchome ip link set m10 up
ip netns exec shinjukusanchome ip link set f12 up
ip netns exec shinjukusanchome ip link set f14 up

ip netns exec shinjukugyoemmae ip link set lo up
ip netns exec shinjukugyoemmae ip link set m9 up
ip netns exec shinjukugyoemmae ip link set m11 up

ip netns exec yotsuyasanchome ip link set lo up
ip netns exec yotsuyasanchome ip link set m10 up
ip netns exec yotsuyasanchome ip link set m12 up

ip netns exec yotsuya ip link set lo up
ip netns exec yotsuya ip link set m11 up
ip netns exec yotsuya ip link set m13 up
ip netns exec yotsuya ip link set n9 up
ip netns exec yotsuya ip link set n7 up

ip netns exec kokkaigijidomae ip link set lo up
ip netns exec kokkaigijidomae ip link set m13 up
ip netns exec kokkaigijidomae ip link set m15 up
ip netns exec kokkaigijidomae ip link set c8 up
ip netns exec kokkaigijidomae ip link set c6 up

ip netns exec kasumigaseki ip link set lo up
ip netns exec kasumigaseki ip link set m14 up
ip netns exec kasumigaseki ip link set m16 up
ip netns exec kasumigaseki ip link set h8 up
ip netns exec kasumigaseki ip link set h6 up
ip netns exec kasumigaseki ip link set c9 up
ip netns exec kasumigaseki ip link set c7 up

ip netns exec tokyo ip link set lo up
ip netns exec tokyo ip link set m16 up
ip netns exec tokyo ip link set m18 up

ip netns exec otemachi ip link set lo up
ip netns exec otemachi ip link set m17 up
ip netns exec otemachi ip link set m19 up
ip netns exec otemachi ip link set t8 up
ip netns exec otemachi ip link set t10 up
ip netns exec otemachi ip link set c12 up
ip netns exec otemachi ip link set c10 up
ip netns exec otemachi ip link set z7 up
ip netns exec otemachi ip link set z9 up

ip netns exec awajicho ip link set lo up
ip netns exec awajicho ip link set m18 up
ip netns exec awajicho ip link set m20 up

ip netns exec ochanomizu ip link set lo up
ip netns exec ochanomizu ip link set m19 up
ip netns exec ochanomizu ip link set m21 up

ip netns exec hongosanchome ip link set lo up
ip netns exec hongosanchome ip link set m20 up
ip netns exec hongosanchome ip link set m22 up

ip netns exec korakuen ip link set lo up
ip netns exec korakuen ip link set m21 up
ip netns exec korakuen ip link set m23 up
ip netns exec korakuen ip link set n12 up
ip netns exec korakuen ip link set n10 up

ip netns exec myogadani ip link set lo up
ip netns exec myogadani ip link set m22 up
ip netns exec myogadani ip link set m24 up

ip netns exec shinotsuka ip link set lo up
ip netns exec shinotsuka ip link set m23 up
ip netns exec shinotsuka ip link set m25 up

ip netns exec ikebukuro ip link set lo up
ip netns exec ikebukuro ip link set m24 up
ip netns exec ikebukuro ip link set y8 up
ip netns exec ikebukuro ip link set y10 up
ip netns exec ikebukuro ip link set f8 up
ip netns exec ikebukuro ip link set f10 up

ip netns exec kitasenju ip link set lo up
ip netns exec kitasenju ip link set h21 up
ip netns exec kitasenju ip link set c19 up
ip netns exec kitasenju ip link set c17 up

ip netns exec minamisenju ip link set lo up
ip netns exec minamisenju ip link set h22 up
ip netns exec minamisenju ip link set h20 up

ip netns exec minowa ip link set lo up
ip netns exec minowa ip link set h21 up
ip netns exec minowa ip link set h19 up

ip netns exec iriya ip link set lo up
ip netns exec iriya ip link set h20 up
ip netns exec iriya ip link set h18 up

ip netns exec nakaokachimachi ip link set lo up
ip netns exec nakaokachimachi ip link set h18 up
ip netns exec nakaokachimachi ip link set h16 up

ip netns exec akihabara ip link set lo up
ip netns exec akihabara ip link set h17 up
ip netns exec akihabara ip link set h15 up

ip netns exec kodemmacho ip link set lo up
ip netns exec kodemmacho ip link set h16 up
ip netns exec kodemmacho ip link set h14 up

ip netns exec ningyocho ip link set lo up
ip netns exec ningyocho ip link set h15 up
ip netns exec ningyocho ip link set h13 up

ip netns exec kayabacho ip link set lo up
ip netns exec kayabacho ip link set h14 up
ip netns exec kayabacho ip link set h12 up
ip netns exec kayabacho ip link set t10 up
ip netns exec kayabacho ip link set t12 up

ip netns exec hatchobori ip link set lo up
ip netns exec hatchobori ip link set h13 up
ip netns exec hatchobori ip link set h11 up

ip netns exec tsukiji ip link set lo up
ip netns exec tsukiji ip link set h12 up
ip netns exec tsukiji ip link set h10 up

ip netns exec higashiginza ip link set lo up
ip netns exec higashiginza ip link set h11 up
ip netns exec higashiginza ip link set h9 up

ip netns exec hibiya ip link set lo up
ip netns exec hibiya ip link set h9 up
ip netns exec hibiya ip link set h7 up
ip netns exec hibiya ip link set c10 up
ip netns exec hibiya ip link set c8 up

ip netns exec toranomonhiruzu ip link set lo up
ip netns exec toranomonhiruzu ip link set h7 up
ip netns exec toranomonhiruzu ip link set h5 up

ip netns exec kamiyacho ip link set lo up
ip netns exec kamiyacho ip link set h6 up
ip netns exec kamiyacho ip link set h4 up

ip netns exec roppongi ip link set lo up
ip netns exec roppongi ip link set h5 up
ip netns exec roppongi ip link set h3 up

ip netns exec hiroo ip link set lo up
ip netns exec hiroo ip link set h4 up
ip netns exec hiroo ip link set h2 up

ip netns exec ebisu ip link set lo up
ip netns exec ebisu ip link set h3 up
ip netns exec ebisu ip link set h1 up

ip netns exec nakameguro ip link set lo up
ip netns exec nakameguro ip link set h2 up

ip netns exec nakano ip link set lo up
ip netns exec nakano ip link set t2 up

ip netns exec ochiai ip link set lo up
ip netns exec ochiai ip link set t1 up
ip netns exec ochiai ip link set t3 up

ip netns exec takadanobaba ip link set lo up
ip netns exec takadanobaba ip link set t2 up
ip netns exec takadanobaba ip link set t4 up

ip netns exec waseda ip link set lo up
ip netns exec waseda ip link set t3 up
ip netns exec waseda ip link set t5 up

ip netns exec kagurazaka ip link set lo up
ip netns exec kagurazaka ip link set t4 up
ip netns exec kagurazaka ip link set t6 up

ip netns exec iidabashi ip link set lo up
ip netns exec iidabashi ip link set t5 up
ip netns exec iidabashi ip link set t7 up
ip netns exec iidabashi ip link set y12 up
ip netns exec iidabashi ip link set y14 up
ip netns exec iidabashi ip link set n11 up
ip netns exec iidabashi ip link set n9 up

ip netns exec kudanshita ip link set lo up
ip netns exec kudanshita ip link set t6 up
ip netns exec kudanshita ip link set t8 up
ip netns exec kudanshita ip link set z5 up
ip netns exec kudanshita ip link set z7 up

ip netns exec takebashi ip link set lo up
ip netns exec takebashi ip link set t7 up
ip netns exec takebashi ip link set t9 up

ip netns exec monzennakacho ip link set lo up
ip netns exec monzennakacho ip link set t11 up
ip netns exec monzennakacho ip link set t13 up

ip netns exec kiba ip link set lo up
ip netns exec kiba ip link set t12 up
ip netns exec kiba ip link set t14 up

ip netns exec toyocho ip link set lo up
ip netns exec toyocho ip link set t13 up
ip netns exec toyocho ip link set t15 up

ip netns exec minamisunamachi ip link set lo up
ip netns exec minamisunamachi ip link set t14 up
ip netns exec minamisunamachi ip link set t16 up

ip netns exec nishikasai ip link set lo up
ip netns exec nishikasai ip link set t15 up
ip netns exec nishikasai ip link set t17 up

ip netns exec kasai ip link set lo up
ip netns exec kasai ip link set t16 up
ip netns exec kasai ip link set t18 up

ip netns exec urayasu ip link set lo up
ip netns exec urayasu ip link set t17 up
ip netns exec urayasu ip link set t19 up

ip netns exec minamigyotoku ip link set lo up
ip netns exec minamigyotoku ip link set t18 up
ip netns exec minamigyotoku ip link set t20 up

ip netns exec gyotoku ip link set lo up
ip netns exec gyotoku ip link set t19 up
ip netns exec gyotoku ip link set t21 up

ip netns exec myoden ip link set lo up
ip netns exec myoden ip link set t20 up
ip netns exec myoden ip link set t22 up

ip netns exec barakinakayama ip link set lo up
ip netns exec barakinakayama ip link set t21 up
ip netns exec barakinakayama ip link set t23 up

ip netns exec nishifunabashi ip link set lo up
ip netns exec nishifunabashi ip link set t22 up

ip netns exec kitaayase ip link set lo up
ip netns exec kitaayase ip link set c19 up

ip netns exec ayase ip link set lo up
ip netns exec ayase ip link set c20 up
ip netns exec ayase ip link set c18 up

ip netns exec machiya ip link set lo up
ip netns exec machiya ip link set c18 up
ip netns exec machiya ip link set c16 up

ip netns exec nishinippori ip link set lo up
ip netns exec nishinippori ip link set c17 up
ip netns exec nishinippori ip link set c15 up

ip netns exec sendagi ip link set lo up
ip netns exec sendagi ip link set c16 up
ip netns exec sendagi ip link set c14 up

ip netns exec nezu ip link set lo up
ip netns exec nezu ip link set c15 up
ip netns exec nezu ip link set c13 up

ip netns exec yushima ip link set lo up
ip netns exec yushima ip link set c14 up
ip netns exec yushima ip link set c12 up

ip netns exec shinochanomizu ip link set lo up
ip netns exec shinochanomizu ip link set c13 up
ip netns exec shinochanomizu ip link set c11 up

ip netns exec nijubashimae ip link set lo up
ip netns exec nijubashimae ip link set c11 up
ip netns exec nijubashimae ip link set c9 up

ip netns exec akasaka ip link set lo up
ip netns exec akasaka ip link set c7 up
ip netns exec akasaka ip link set c5 up

ip netns exec nogizaka ip link set lo up
ip netns exec nogizaka ip link set c6 up
ip netns exec nogizaka ip link set c4 up

ip netns exec meijijingumae ip link set lo up
ip netns exec meijijingumae ip link set c4 up
ip netns exec meijijingumae ip link set c2 up
ip netns exec meijijingumae ip link set f14 up
ip netns exec meijijingumae ip link set f16 up

ip netns exec yoyogikoen ip link set lo up
ip netns exec yoyogikoen ip link set c3 up
ip netns exec yoyogikoen ip link set c1 up

ip netns exec yoyogiuehara ip link set lo up
ip netns exec yoyogiuehara ip link set c2 up

ip netns exec wakoshi ip link set lo up
ip netns exec wakoshi ip link set y2 up
ip netns exec wakoshi ip link set f2 up

ip netns exec chikatetsunarimasu ip link set lo up
ip netns exec chikatetsunarimasu ip link set y1 up
ip netns exec chikatetsunarimasu ip link set y3 up
ip netns exec chikatetsunarimasu ip link set f1 up
ip netns exec chikatetsunarimasu ip link set f3 up

ip netns exec chikatetsuakatsuka ip link set lo up
ip netns exec chikatetsuakatsuka ip link set y2 up
ip netns exec chikatetsuakatsuka ip link set y4 up
ip netns exec chikatetsuakatsuka ip link set f2 up
ip netns exec chikatetsuakatsuka ip link set f4 up

ip netns exec heiwadai ip link set lo up
ip netns exec heiwadai ip link set y3 up
ip netns exec heiwadai ip link set y5 up
ip netns exec heiwadai ip link set f3 up
ip netns exec heiwadai ip link set f5 up

ip netns exec hikawadai ip link set lo up
ip netns exec hikawadai ip link set y4 up
ip netns exec hikawadai ip link set y6 up
ip netns exec hikawadai ip link set f4 up
ip netns exec hikawadai ip link set f6 up

ip netns exec kotakemukaihara ip link set lo up
ip netns exec kotakemukaihara ip link set y5 up
ip netns exec kotakemukaihara ip link set y7 up
ip netns exec kotakemukaihara ip link set f5 up
ip netns exec kotakemukaihara ip link set f7 up

ip netns exec senkawa ip link set lo up
ip netns exec senkawa ip link set y6 up
ip netns exec senkawa ip link set y8 up
ip netns exec senkawa ip link set f6 up
ip netns exec senkawa ip link set f8 up

ip netns exec kanamecho ip link set lo up
ip netns exec kanamecho ip link set y7 up
ip netns exec kanamecho ip link set y9 up
ip netns exec kanamecho ip link set f7 up
ip netns exec kanamecho ip link set f9 up

ip netns exec higashiikebukuro ip link set lo up
ip netns exec higashiikebukuro ip link set y9 up
ip netns exec higashiikebukuro ip link set y11 up

ip netns exec gokokuji ip link set lo up
ip netns exec gokokuji ip link set y10 up
ip netns exec gokokuji ip link set y12 up

ip netns exec edogawabashi ip link set lo up
ip netns exec edogawabashi ip link set y11 up
ip netns exec edogawabashi ip link set y13 up

ip netns exec ichigaya ip link set lo up
ip netns exec ichigaya ip link set y13 up
ip netns exec ichigaya ip link set y15 up
ip netns exec ichigaya ip link set n10 up
ip netns exec ichigaya ip link set n8 up

ip netns exec kojimachi ip link set lo up
ip netns exec kojimachi ip link set y14 up
ip netns exec kojimachi ip link set y16 up

ip netns exec nagatacho ip link set lo up
ip netns exec nagatacho ip link set y15 up
ip netns exec nagatacho ip link set y17 up
ip netns exec nagatacho ip link set z3 up
ip netns exec nagatacho ip link set z5 up
ip netns exec nagatacho ip link set n8 up
ip netns exec nagatacho ip link set n6 up

ip netns exec sakuradamon ip link set lo up
ip netns exec sakuradamon ip link set y16 up
ip netns exec sakuradamon ip link set y18 up

ip netns exec yurakucho ip link set lo up
ip netns exec yurakucho ip link set y17 up
ip netns exec yurakucho ip link set y19 up

ip netns exec ginzaicchome ip link set lo up
ip netns exec ginzaicchome ip link set y18 up
ip netns exec ginzaicchome ip link set y20 up

ip netns exec shintomicho ip link set lo up
ip netns exec shintomicho ip link set y19 up
ip netns exec shintomicho ip link set y21 up

ip netns exec tsukishima ip link set lo up
ip netns exec tsukishima ip link set y20 up
ip netns exec tsukishima ip link set y22 up

ip netns exec toyosu ip link set lo up
ip netns exec toyosu ip link set y21 up
ip netns exec toyosu ip link set y23 up

ip netns exec tatsumi ip link set lo up
ip netns exec tatsumi ip link set y22 up
ip netns exec tatsumi ip link set y24 up

ip netns exec shinkiba ip link set lo up
ip netns exec shinkiba ip link set y23 up

ip netns exec hanzomon ip link set lo up
ip netns exec hanzomon ip link set z4 up
ip netns exec hanzomon ip link set z6 up

ip netns exec jimbocho ip link set lo up
ip netns exec jimbocho ip link set z6 up
ip netns exec jimbocho ip link set z8 up

ip netns exec suitengumae ip link set lo up
ip netns exec suitengumae ip link set z9 up
ip netns exec suitengumae ip link set z11 up

ip netns exec kiyosumishirakawa ip link set lo up
ip netns exec kiyosumishirakawa ip link set z10 up
ip netns exec kiyosumishirakawa ip link set z12 up

ip netns exec sumiyoshi ip link set lo up
ip netns exec sumiyoshi ip link set z11 up
ip netns exec sumiyoshi ip link set z13 up

ip netns exec kinshicho ip link set lo up
ip netns exec kinshicho ip link set z12 up
ip netns exec kinshicho ip link set z14 up

ip netns exec oshiage ip link set lo up
ip netns exec oshiage ip link set z13 up

ip netns exec akabaneiwabuchi ip link set lo up
ip netns exec akabaneiwabuchi ip link set n18 up

ip netns exec shimo ip link set lo up
ip netns exec shimo ip link set n19 up
ip netns exec shimo ip link set n17 up

ip netns exec ojikamiya ip link set lo up
ip netns exec ojikamiya ip link set n18 up
ip netns exec ojikamiya ip link set n16 up

ip netns exec oji ip link set lo up
ip netns exec oji ip link set n17 up
ip netns exec oji ip link set n15 up

ip netns exec nishigahara ip link set lo up
ip netns exec nishigahara ip link set n16 up
ip netns exec nishigahara ip link set n14 up

ip netns exec komagome ip link set lo up
ip netns exec komagome ip link set n15 up
ip netns exec komagome ip link set n13 up

ip netns exec honkomagome ip link set lo up
ip netns exec honkomagome ip link set n14 up
ip netns exec honkomagome ip link set n12 up

ip netns exec todaimae ip link set lo up
ip netns exec todaimae ip link set n13 up
ip netns exec todaimae ip link set n11 up

ip netns exec roppongiicchome ip link set lo up
ip netns exec roppongiicchome ip link set n6 up
ip netns exec roppongiicchome ip link set n4 up

ip netns exec azabujuban ip link set lo up
ip netns exec azabujuban ip link set n5 up
ip netns exec azabujuban ip link set n3 up

ip netns exec shirakanetakanawa ip link set lo up
ip netns exec shirakanetakanawa ip link set n4 up
ip netns exec shirakanetakanawa ip link set n2 up

ip netns exec shiroganedai ip link set lo up
ip netns exec shiroganedai ip link set n3 up
ip netns exec shiroganedai ip link set n1 up

ip netns exec meguro ip link set lo up
ip netns exec meguro ip link set n2 up

ip netns exec zoshigaya ip link set lo up
ip netns exec zoshigaya ip link set f9 up
ip netns exec zoshigaya ip link set f11 up

ip netns exec nishiwaseda ip link set lo up
ip netns exec nishiwaseda ip link set f10 up
ip netns exec nishiwaseda ip link set f12 up

ip netns exec higashishinjuku ip link set lo up
ip netns exec higashishinjuku ip link set f11 up
ip netns exec higashishinjuku ip link set f13 up

ip netns exec kitasando ip link set lo up
ip netns exec kitasando ip link set f13 up
ip netns exec kitasando ip link set f15 up

set +e

# run post linkup commands: honancho
[ -d /etc/netns/honancho ] || mkdir -p /etc/netns/honancho/
cp /etc/hosts /etc/netns/honancho/hosts
cat <<__EOF__>>/etc/netns/honancho/hosts

10.254.2.26	honancho
10.2.26.10	honancho
10.254.2.27	nakanofujimicho
10.2.26.20	nakanofujimicho
10.2.27.10	nakanofujimicho
10.254.2.28	nakanoshimbashi
10.2.27.20	nakanoshimbashi
10.2.28.10	nakanoshimbashi
10.254.1.19	asakusa
10.1.18.20	asakusa
10.254.1.18	tawaramachi
10.1.17.20	tawaramachi
10.1.18.10	tawaramachi
10.254.1.17	inaricho
10.1.16.20	inaricho
10.1.17.10	inaricho
10.254.1.16	ueno
10.1.15.20	ueno
10.1.16.10	ueno
10.3.17.20	ueno
10.3.18.10	ueno
10.254.1.15	uenohirokoji
10.1.14.20	uenohirokoji
10.1.15.10	uenohirokoji
10.254.1.14	suehirocho
10.1.13.20	suehirocho
10.1.14.10	suehirocho
10.254.1.13	kanda
10.1.12.20	kanda
10.1.13.10	kanda
10.254.1.12	mitsukoshimae
10.1.11.20	mitsukoshimae
10.1.12.10	mitsukoshimae
10.7.9.10	mitsukoshimae
10.7.8.20	mitsukoshimae
10.254.1.11	nihombashi
10.1.10.20	nihombashi
10.1.11.10	nihombashi
10.4.10.10	nihombashi
10.4.9.20	nihombashi
10.254.1.10	kyobashi
10.1.10.10	kyobashi
10.1.9.20	kyobashi
10.254.1.9	ginza
10.1.9.10	ginza
10.1.8.20	ginza
10.3.9.10	ginza
10.3.8.20	ginza
10.2.15.20	ginza
10.2.16.10	ginza
10.254.1.8	shimbashi
10.1.7.20	shimbashi
10.1.8.10	shimbashi
10.254.1.7	toranomon
10.1.6.20	toranomon
10.1.7.10	toranomon
10.254.1.6	tameikesanno
10.1.5.20	tameikesanno
10.1.6.10	tameikesanno
10.8.5.20	tameikesanno
10.8.6.10	tameikesanno
10.254.1.5	akasakamitsuke
10.1.4.20	akasakamitsuke
10.1.5.10	akasakamitsuke
10.2.12.20	akasakamitsuke
10.2.13.10	akasakamitsuke
10.254.1.4	aoyamaicchome
10.1.3.20	aoyamaicchome
10.1.4.10	aoyamaicchome
10.7.2.20	aoyamaicchome
10.7.3.10	aoyamaicchome
10.254.1.3	gaiemmae
10.1.2.20	gaiemmae
10.1.3.10	gaiemmae
10.254.1.2	omotesando
10.5.3.20	omotesando
10.5.4.10	omotesando
10.1.1.20	omotesando
10.1.2.10	omotesando
10.7.1.20	omotesando
10.7.2.10	omotesando
10.254.1.1	shibuya
10.9.15.20	shibuya
10.1.1.10	shibuya
10.7.1.10	shibuya
10.254.2.1	ogikubo
10.2.1.10	ogikubo
10.254.2.2	minamiasagaya
10.2.1.20	minamiasagaya
10.2.2.10	minamiasagaya
10.254.2.3	shinkoenji
10.2.2.20	shinkoenji
10.2.3.10	shinkoenji
10.254.2.4	higashikoenji
10.2.3.20	higashikoenji
10.2.4.10	higashikoenji
10.254.2.5	shinnakano
10.2.4.20	shinnakano
10.2.5.10	shinnakano
10.254.2.6	nakanosakaue
10.2.28.20	nakanosakaue
10.2.5.20	nakanosakaue
10.2.6.10	nakanosakaue
10.254.2.7	nishishinjuku
10.2.6.20	nishishinjuku
10.2.7.10	nishishinjuku
10.254.2.8	shinjuku
10.2.7.20	shinjuku
10.2.8.10	shinjuku
10.254.2.9	shinjukusanchome
10.9.12.20	shinjukusanchome
10.9.13.10	shinjukusanchome
10.2.9.10	shinjukusanchome
10.2.8.20	shinjukusanchome
10.254.2.10	shinjukugyoemmae
10.2.10.10	shinjukugyoemmae
10.2.9.20	shinjukugyoemmae
10.254.2.11	yotsuyasanchome
10.2.10.20	yotsuyasanchome
10.2.11.10	yotsuyasanchome
10.254.2.12	yotsuya
10.2.11.20	yotsuya
10.2.12.10	yotsuya
10.8.7.20	yotsuya
10.8.8.10	yotsuya
10.254.2.14	kokkaigijidomae
10.5.6.20	kokkaigijidomae
10.5.7.10	kokkaigijidomae
10.2.13.20	kokkaigijidomae
10.2.14.10	kokkaigijidomae
10.254.2.15	kasumigaseki
10.5.7.20	kasumigaseki
10.5.8.10	kasumigaseki
10.3.6.20	kasumigaseki
10.3.7.10	kasumigaseki
10.2.14.20	kasumigaseki
10.2.15.10	kasumigaseki
10.254.2.17	tokyo
10.2.16.20	tokyo
10.2.17.10	tokyo
10.254.2.18	otemachi
10.5.10.20	otemachi
10.5.11.10	otemachi
10.2.17.20	otemachi
10.2.18.10	otemachi
10.4.9.10	otemachi
10.4.8.20	otemachi
10.7.7.20	otemachi
10.7.8.10	otemachi
10.254.2.19	awajicho
10.2.18.20	awajicho
10.2.19.10	awajicho
10.254.2.20	ochanomizu
10.2.19.20	ochanomizu
10.2.20.10	ochanomizu
10.254.2.21	hongosanchome
10.2.20.20	hongosanchome
10.2.21.10	hongosanchome
10.254.2.22	korakuen
10.2.21.20	korakuen
10.2.22.10	korakuen
10.8.10.20	korakuen
10.8.11.10	korakuen
10.254.2.23	myogadani
10.2.22.20	myogadani
10.2.23.10	myogadani
10.254.2.24	shinotsuka
10.2.23.20	shinotsuka
10.2.24.10	shinotsuka
10.254.2.25	ikebukuro
10.9.9.10	ikebukuro
10.9.8.20	ikebukuro
10.2.24.20	ikebukuro
10.6.9.10	ikebukuro
10.6.8.20	ikebukuro
10.254.3.22	kitasenju
10.5.17.20	kitasenju
10.5.18.10	kitasenju
10.3.21.20	kitasenju
10.254.3.21	minamisenju
10.3.20.20	minamisenju
10.3.21.10	minamisenju
10.254.3.20	minowa
10.3.19.20	minowa
10.3.20.10	minowa
10.254.3.19	iriya
10.3.18.20	iriya
10.3.19.10	iriya
10.254.3.17	nakaokachimachi
10.3.16.20	nakaokachimachi
10.3.17.10	nakaokachimachi
10.254.3.16	akihabara
10.3.15.20	akihabara
10.3.16.10	akihabara
10.254.3.15	kodemmacho
10.3.14.20	kodemmacho
10.3.15.10	kodemmacho
10.254.3.14	ningyocho
10.3.13.20	ningyocho
10.3.14.10	ningyocho
10.254.3.13	kayabacho
10.3.12.20	kayabacho
10.3.13.10	kayabacho
10.4.10.20	kayabacho
10.4.11.10	kayabacho
10.254.3.12	hatchobori
10.3.11.20	hatchobori
10.3.12.10	hatchobori
10.254.3.11	tsukiji
10.3.10.20	tsukiji
10.3.11.10	tsukiji
10.254.3.10	higashiginza
10.3.10.10	higashiginza
10.3.9.20	higashiginza
10.254.3.8	hibiya
10.5.9.10	hibiya
10.5.8.20	hibiya
10.3.7.20	hibiya
10.3.8.10	hibiya
10.254.3.6	toranomonhiruzu
10.3.5.20	toranomonhiruzu
10.3.6.10	toranomonhiruzu
10.254.3.5	kamiyacho
10.3.4.20	kamiyacho
10.3.5.10	kamiyacho
10.254.3.4	roppongi
10.3.3.20	roppongi
10.3.4.10	roppongi
10.254.3.3	hiroo
10.3.2.20	hiroo
10.3.3.10	hiroo
10.254.3.2	ebisu
10.3.1.20	ebisu
10.3.2.10	ebisu
10.254.3.1	nakameguro
10.3.1.10	nakameguro
10.254.4.1	nakano
10.4.1.10	nakano
10.254.4.2	ochiai
10.4.1.20	ochiai
10.4.2.10	ochiai
10.254.4.3	takadanobaba
10.4.2.20	takadanobaba
10.4.3.10	takadanobaba
10.254.4.4	waseda
10.4.3.20	waseda
10.4.4.10	waseda
10.254.4.5	kagurazaka
10.4.4.20	kagurazaka
10.4.5.10	kagurazaka
10.254.4.6	iidabashi
10.8.10.10	iidabashi
10.8.9.20	iidabashi
10.4.5.20	iidabashi
10.4.6.10	iidabashi
10.6.12.20	iidabashi
10.6.13.10	iidabashi
10.254.4.7	kudanshita
10.4.6.20	kudanshita
10.4.7.10	kudanshita
10.7.5.20	kudanshita
10.7.6.10	kudanshita
10.254.4.8	takebashi
10.4.7.20	takebashi
10.4.8.10	takebashi
10.254.4.12	monzennakacho
10.4.11.20	monzennakacho
10.4.12.10	monzennakacho
10.254.4.13	kiba
10.4.12.20	kiba
10.4.13.10	kiba
10.254.4.14	toyocho
10.4.13.20	toyocho
10.4.14.10	toyocho
10.254.4.15	minamisunamachi
10.4.14.20	minamisunamachi
10.4.15.10	minamisunamachi
10.254.4.16	nishikasai
10.4.15.20	nishikasai
10.4.16.10	nishikasai
10.254.4.17	kasai
10.4.16.20	kasai
10.4.17.10	kasai
10.254.4.18	urayasu
10.4.17.20	urayasu
10.4.18.10	urayasu
10.254.4.19	minamigyotoku
10.4.18.20	minamigyotoku
10.4.19.10	minamigyotoku
10.254.4.20	gyotoku
10.4.19.20	gyotoku
10.4.20.10	gyotoku
10.254.4.21	myoden
10.4.20.20	myoden
10.4.21.10	myoden
10.254.4.22	barakinakayama
10.4.21.20	barakinakayama
10.4.22.10	barakinakayama
10.254.4.23	nishifunabashi
10.4.22.20	nishifunabashi
10.254.5.20	kitaayase
10.5.19.20	kitaayase
10.254.5.19	ayase
10.5.18.20	ayase
10.5.19.10	ayase
10.254.5.17	machiya
10.5.16.20	machiya
10.5.17.10	machiya
10.254.5.16	nishinippori
10.5.15.20	nishinippori
10.5.16.10	nishinippori
10.254.5.15	sendagi
10.5.14.20	sendagi
10.5.15.10	sendagi
10.254.5.14	nezu
10.5.13.20	nezu
10.5.14.10	nezu
10.254.5.13	yushima
10.5.12.20	yushima
10.5.13.10	yushima
10.254.5.12	shinochanomizu
10.5.11.20	shinochanomizu
10.5.12.10	shinochanomizu
10.254.5.10	nijubashimae
10.5.10.10	nijubashimae
10.5.9.20	nijubashimae
10.254.5.6	akasaka
10.5.5.20	akasaka
10.5.6.10	akasaka
10.254.5.5	nogizaka
10.5.4.20	nogizaka
10.5.5.10	nogizaka
10.254.5.3	meijijingumae
10.5.2.20	meijijingumae
10.5.3.10	meijijingumae
10.9.14.20	meijijingumae
10.9.15.10	meijijingumae
10.254.5.2	yoyogikoen
10.5.1.20	yoyogikoen
10.5.2.10	yoyogikoen
10.254.5.1	yoyogiuehara
10.5.1.10	yoyogiuehara
10.254.6.1	wakoshi
10.9.1.10	wakoshi
10.6.1.10	wakoshi
10.254.6.2	chikatetsunarimasu
10.9.1.20	chikatetsunarimasu
10.9.2.10	chikatetsunarimasu
10.6.1.20	chikatetsunarimasu
10.6.2.10	chikatetsunarimasu
10.254.6.3	chikatetsuakatsuka
10.9.2.20	chikatetsuakatsuka
10.9.3.10	chikatetsuakatsuka
10.6.2.20	chikatetsuakatsuka
10.6.3.10	chikatetsuakatsuka
10.254.6.4	heiwadai
10.9.3.20	heiwadai
10.9.4.10	heiwadai
10.6.3.20	heiwadai
10.6.4.10	heiwadai
10.254.6.5	hikawadai
10.9.4.20	hikawadai
10.9.5.10	hikawadai
10.6.4.20	hikawadai
10.6.5.10	hikawadai
10.254.6.6	kotakemukaihara
10.9.5.20	kotakemukaihara
10.9.6.10	kotakemukaihara
10.6.5.20	kotakemukaihara
10.6.6.10	kotakemukaihara
10.254.6.7	senkawa
10.9.6.20	senkawa
10.9.7.10	senkawa
10.6.6.20	senkawa
10.6.7.10	senkawa
10.254.6.8	kanamecho
10.9.7.20	kanamecho
10.9.8.10	kanamecho
10.6.7.20	kanamecho
10.6.8.10	kanamecho
10.254.6.10	higashiikebukuro
10.6.10.10	higashiikebukuro
10.6.9.20	higashiikebukuro
10.254.6.11	gokokuji
10.6.10.20	gokokuji
10.6.11.10	gokokuji
10.254.6.12	edogawabashi
10.6.11.20	edogawabashi
10.6.12.10	edogawabashi
10.254.6.14	ichigaya
10.8.9.10	ichigaya
10.8.8.20	ichigaya
10.6.13.20	ichigaya
10.6.14.10	ichigaya
10.254.6.15	kojimachi
10.6.14.20	kojimachi
10.6.15.10	kojimachi
10.254.6.16	nagatacho
10.8.6.20	nagatacho
10.8.7.10	nagatacho
10.6.15.20	nagatacho
10.6.16.10	nagatacho
10.7.3.20	nagatacho
10.7.4.10	nagatacho
10.254.6.17	sakuradamon
10.6.16.20	sakuradamon
10.6.17.10	sakuradamon
10.254.6.18	yurakucho
10.6.17.20	yurakucho
10.6.18.10	yurakucho
10.254.6.19	ginzaicchome
10.6.18.20	ginzaicchome
10.6.19.10	ginzaicchome
10.254.6.20	shintomicho
10.6.19.20	shintomicho
10.6.20.10	shintomicho
10.254.6.21	tsukishima
10.6.20.20	tsukishima
10.6.21.10	tsukishima
10.254.6.22	toyosu
10.6.21.20	toyosu
10.6.22.10	toyosu
10.254.6.23	tatsumi
10.6.22.20	tatsumi
10.6.23.10	tatsumi
10.254.6.24	shinkiba
10.6.23.20	shinkiba
10.254.7.5	hanzomon
10.7.4.20	hanzomon
10.7.5.10	hanzomon
10.254.7.7	jimbocho
10.7.6.20	jimbocho
10.7.7.10	jimbocho
10.254.7.10	suitengumae
10.7.10.10	suitengumae
10.7.9.20	suitengumae
10.254.7.11	kiyosumishirakawa
10.7.10.20	kiyosumishirakawa
10.7.11.10	kiyosumishirakawa
10.254.7.12	sumiyoshi
10.7.11.20	sumiyoshi
10.7.12.10	sumiyoshi
10.254.7.13	kinshicho
10.7.12.20	kinshicho
10.7.13.10	kinshicho
10.254.7.14	oshiage
10.7.13.20	oshiage
10.254.8.19	akabaneiwabuchi
10.8.18.20	akabaneiwabuchi
10.254.8.18	shimo
10.8.17.20	shimo
10.8.18.10	shimo
10.254.8.17	ojikamiya
10.8.16.20	ojikamiya
10.8.17.10	ojikamiya
10.254.8.16	oji
10.8.15.20	oji
10.8.16.10	oji
10.254.8.15	nishigahara
10.8.14.20	nishigahara
10.8.15.10	nishigahara
10.254.8.14	komagome
10.8.13.20	komagome
10.8.14.10	komagome
10.254.8.13	honkomagome
10.8.12.20	honkomagome
10.8.13.10	honkomagome
10.254.8.12	todaimae
10.8.11.20	todaimae
10.8.12.10	todaimae
10.254.8.5	roppongiicchome
10.8.4.20	roppongiicchome
10.8.5.10	roppongiicchome
10.254.8.4	azabujuban
10.8.3.20	azabujuban
10.8.4.10	azabujuban
10.254.8.3	shirakanetakanawa
10.8.2.20	shirakanetakanawa
10.8.3.10	shirakanetakanawa
10.254.8.2	shiroganedai
10.8.1.20	shiroganedai
10.8.2.10	shiroganedai
10.254.8.1	meguro
10.8.1.10	meguro
10.254.9.10	zoshigaya
10.9.10.10	zoshigaya
10.9.9.20	zoshigaya
10.254.9.11	nishiwaseda
10.9.10.20	nishiwaseda
10.9.11.10	nishiwaseda
10.254.9.12	higashishinjuku
10.9.11.20	higashishinjuku
10.9.12.10	higashishinjuku
10.254.9.14	kitasando
10.9.13.20	kitasando
10.9.14.10	kitasando
__EOF__
# create frr config directory if not exists
if [ ! -d "/etc/frr/honancho" ]; then
	mkdir "/etc/frr/honancho"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/honancho/vtysh.conf
no service integrated-vtysh-config
hostname honancho
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/honancho/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/honancho"

# start frr
/usr/lib/frr/frrinit.sh start "honancho"

# ospf setting
ip netns exec honancho vtysh -N honancho -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: nakanofujimicho
[ -d /etc/netns/nakanofujimicho ] || mkdir -p /etc/netns/nakanofujimicho/
ln -sf /etc/netns/honancho/hosts /etc/netns/nakanofujimicho/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/nakanofujimicho" ]; then
	mkdir "/etc/frr/nakanofujimicho"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nakanofujimicho/vtysh.conf
no service integrated-vtysh-config
hostname nakanofujimicho
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nakanofujimicho/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/nakanofujimicho"

# start frr
/usr/lib/frr/frrinit.sh start "nakanofujimicho"

# ospf setting
ip netns exec nakanofujimicho vtysh -N nakanofujimicho -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: nakanoshimbashi
[ -d /etc/netns/nakanoshimbashi ] || mkdir -p /etc/netns/nakanoshimbashi/
ln -sf /etc/netns/honancho/hosts /etc/netns/nakanoshimbashi/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/nakanoshimbashi" ]; then
	mkdir "/etc/frr/nakanoshimbashi"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nakanoshimbashi/vtysh.conf
no service integrated-vtysh-config
hostname nakanoshimbashi
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nakanoshimbashi/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/nakanoshimbashi"

# start frr
/usr/lib/frr/frrinit.sh start "nakanoshimbashi"

# ospf setting
ip netns exec nakanoshimbashi vtysh -N nakanoshimbashi -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: asakusa
[ -d /etc/netns/asakusa ] || mkdir -p /etc/netns/asakusa/
ln -sf /etc/netns/honancho/hosts /etc/netns/asakusa/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/asakusa" ]; then
	mkdir "/etc/frr/asakusa"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/asakusa/vtysh.conf
no service integrated-vtysh-config
hostname asakusa
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/asakusa/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/asakusa"

# start frr
/usr/lib/frr/frrinit.sh start "asakusa"

# ospf setting
ip netns exec asakusa vtysh -N asakusa -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: tawaramachi
[ -d /etc/netns/tawaramachi ] || mkdir -p /etc/netns/tawaramachi/
ln -sf /etc/netns/honancho/hosts /etc/netns/tawaramachi/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/tawaramachi" ]; then
	mkdir "/etc/frr/tawaramachi"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/tawaramachi/vtysh.conf
no service integrated-vtysh-config
hostname tawaramachi
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/tawaramachi/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/tawaramachi"

# start frr
/usr/lib/frr/frrinit.sh start "tawaramachi"

# ospf setting
ip netns exec tawaramachi vtysh -N tawaramachi -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: inaricho
[ -d /etc/netns/inaricho ] || mkdir -p /etc/netns/inaricho/
ln -sf /etc/netns/honancho/hosts /etc/netns/inaricho/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/inaricho" ]; then
	mkdir "/etc/frr/inaricho"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/inaricho/vtysh.conf
no service integrated-vtysh-config
hostname inaricho
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/inaricho/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/inaricho"

# start frr
/usr/lib/frr/frrinit.sh start "inaricho"

# ospf setting
ip netns exec inaricho vtysh -N inaricho -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: ueno
[ -d /etc/netns/ueno ] || mkdir -p /etc/netns/ueno/
ln -sf /etc/netns/honancho/hosts /etc/netns/ueno/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/ueno" ]; then
	mkdir "/etc/frr/ueno"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ueno/vtysh.conf
no service integrated-vtysh-config
hostname ueno
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ueno/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/ueno"

# start frr
/usr/lib/frr/frrinit.sh start "ueno"

# ospf setting
ip netns exec ueno vtysh -N ueno -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: uenohirokoji
[ -d /etc/netns/uenohirokoji ] || mkdir -p /etc/netns/uenohirokoji/
ln -sf /etc/netns/honancho/hosts /etc/netns/uenohirokoji/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/uenohirokoji" ]; then
	mkdir "/etc/frr/uenohirokoji"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/uenohirokoji/vtysh.conf
no service integrated-vtysh-config
hostname uenohirokoji
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/uenohirokoji/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/uenohirokoji"

# start frr
/usr/lib/frr/frrinit.sh start "uenohirokoji"

# ospf setting
ip netns exec uenohirokoji vtysh -N uenohirokoji -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: suehirocho
[ -d /etc/netns/suehirocho ] || mkdir -p /etc/netns/suehirocho/
ln -sf /etc/netns/honancho/hosts /etc/netns/suehirocho/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/suehirocho" ]; then
	mkdir "/etc/frr/suehirocho"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/suehirocho/vtysh.conf
no service integrated-vtysh-config
hostname suehirocho
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/suehirocho/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/suehirocho"

# start frr
/usr/lib/frr/frrinit.sh start "suehirocho"

# ospf setting
ip netns exec suehirocho vtysh -N suehirocho -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: kanda
[ -d /etc/netns/kanda ] || mkdir -p /etc/netns/kanda/
ln -sf /etc/netns/honancho/hosts /etc/netns/kanda/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/kanda" ]; then
	mkdir "/etc/frr/kanda"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kanda/vtysh.conf
no service integrated-vtysh-config
hostname kanda
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kanda/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/kanda"

# start frr
/usr/lib/frr/frrinit.sh start "kanda"

# ospf setting
ip netns exec kanda vtysh -N kanda -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: mitsukoshimae
[ -d /etc/netns/mitsukoshimae ] || mkdir -p /etc/netns/mitsukoshimae/
ln -sf /etc/netns/honancho/hosts /etc/netns/mitsukoshimae/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/mitsukoshimae" ]; then
	mkdir "/etc/frr/mitsukoshimae"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/mitsukoshimae/vtysh.conf
no service integrated-vtysh-config
hostname mitsukoshimae
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/mitsukoshimae/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/mitsukoshimae"

# start frr
/usr/lib/frr/frrinit.sh start "mitsukoshimae"

# ospf setting
ip netns exec mitsukoshimae vtysh -N mitsukoshimae -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: nihombashi
[ -d /etc/netns/nihombashi ] || mkdir -p /etc/netns/nihombashi/
ln -sf /etc/netns/honancho/hosts /etc/netns/nihombashi/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/nihombashi" ]; then
	mkdir "/etc/frr/nihombashi"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nihombashi/vtysh.conf
no service integrated-vtysh-config
hostname nihombashi
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nihombashi/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/nihombashi"

# start frr
/usr/lib/frr/frrinit.sh start "nihombashi"

# ospf setting
ip netns exec nihombashi vtysh -N nihombashi -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: kyobashi
[ -d /etc/netns/kyobashi ] || mkdir -p /etc/netns/kyobashi/
ln -sf /etc/netns/honancho/hosts /etc/netns/kyobashi/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/kyobashi" ]; then
	mkdir "/etc/frr/kyobashi"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kyobashi/vtysh.conf
no service integrated-vtysh-config
hostname kyobashi
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kyobashi/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/kyobashi"

# start frr
/usr/lib/frr/frrinit.sh start "kyobashi"

# ospf setting
ip netns exec kyobashi vtysh -N kyobashi -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: ginza
[ -d /etc/netns/ginza ] || mkdir -p /etc/netns/ginza/
ln -sf /etc/netns/honancho/hosts /etc/netns/ginza/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/ginza" ]; then
	mkdir "/etc/frr/ginza"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ginza/vtysh.conf
no service integrated-vtysh-config
hostname ginza
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ginza/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/ginza"

# start frr
/usr/lib/frr/frrinit.sh start "ginza"

# ospf setting
ip netns exec ginza vtysh -N ginza -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: shimbashi
[ -d /etc/netns/shimbashi ] || mkdir -p /etc/netns/shimbashi/
ln -sf /etc/netns/honancho/hosts /etc/netns/shimbashi/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/shimbashi" ]; then
	mkdir "/etc/frr/shimbashi"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shimbashi/vtysh.conf
no service integrated-vtysh-config
hostname shimbashi
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shimbashi/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/shimbashi"

# start frr
/usr/lib/frr/frrinit.sh start "shimbashi"

# ospf setting
ip netns exec shimbashi vtysh -N shimbashi -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: toranomon
[ -d /etc/netns/toranomon ] || mkdir -p /etc/netns/toranomon/
ln -sf /etc/netns/honancho/hosts /etc/netns/toranomon/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/toranomon" ]; then
	mkdir "/etc/frr/toranomon"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/toranomon/vtysh.conf
no service integrated-vtysh-config
hostname toranomon
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/toranomon/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/toranomon"

# start frr
/usr/lib/frr/frrinit.sh start "toranomon"

# ospf setting
ip netns exec toranomon vtysh -N toranomon -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: tameikesanno
[ -d /etc/netns/tameikesanno ] || mkdir -p /etc/netns/tameikesanno/
ln -sf /etc/netns/honancho/hosts /etc/netns/tameikesanno/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/tameikesanno" ]; then
	mkdir "/etc/frr/tameikesanno"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/tameikesanno/vtysh.conf
no service integrated-vtysh-config
hostname tameikesanno
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/tameikesanno/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/tameikesanno"

# start frr
/usr/lib/frr/frrinit.sh start "tameikesanno"

# ospf setting
ip netns exec tameikesanno vtysh -N tameikesanno -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: akasakamitsuke
[ -d /etc/netns/akasakamitsuke ] || mkdir -p /etc/netns/akasakamitsuke/
ln -sf /etc/netns/honancho/hosts /etc/netns/akasakamitsuke/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/akasakamitsuke" ]; then
	mkdir "/etc/frr/akasakamitsuke"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/akasakamitsuke/vtysh.conf
no service integrated-vtysh-config
hostname akasakamitsuke
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/akasakamitsuke/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/akasakamitsuke"

# start frr
/usr/lib/frr/frrinit.sh start "akasakamitsuke"

# ospf setting
ip netns exec akasakamitsuke vtysh -N akasakamitsuke -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: aoyamaicchome
[ -d /etc/netns/aoyamaicchome ] || mkdir -p /etc/netns/aoyamaicchome/
ln -sf /etc/netns/honancho/hosts /etc/netns/aoyamaicchome/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/aoyamaicchome" ]; then
	mkdir "/etc/frr/aoyamaicchome"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/aoyamaicchome/vtysh.conf
no service integrated-vtysh-config
hostname aoyamaicchome
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/aoyamaicchome/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/aoyamaicchome"

# start frr
/usr/lib/frr/frrinit.sh start "aoyamaicchome"

# ospf setting
ip netns exec aoyamaicchome vtysh -N aoyamaicchome -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: gaiemmae
[ -d /etc/netns/gaiemmae ] || mkdir -p /etc/netns/gaiemmae/
ln -sf /etc/netns/honancho/hosts /etc/netns/gaiemmae/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/gaiemmae" ]; then
	mkdir "/etc/frr/gaiemmae"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/gaiemmae/vtysh.conf
no service integrated-vtysh-config
hostname gaiemmae
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/gaiemmae/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/gaiemmae"

# start frr
/usr/lib/frr/frrinit.sh start "gaiemmae"

# ospf setting
ip netns exec gaiemmae vtysh -N gaiemmae -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: omotesando
[ -d /etc/netns/omotesando ] || mkdir -p /etc/netns/omotesando/
ln -sf /etc/netns/honancho/hosts /etc/netns/omotesando/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/omotesando" ]; then
	mkdir "/etc/frr/omotesando"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/omotesando/vtysh.conf
no service integrated-vtysh-config
hostname omotesando
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/omotesando/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/omotesando"

# start frr
/usr/lib/frr/frrinit.sh start "omotesando"

# ospf setting
ip netns exec omotesando vtysh -N omotesando -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: shibuya
[ -d /etc/netns/shibuya ] || mkdir -p /etc/netns/shibuya/
ln -sf /etc/netns/honancho/hosts /etc/netns/shibuya/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/shibuya" ]; then
	mkdir "/etc/frr/shibuya"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shibuya/vtysh.conf
no service integrated-vtysh-config
hostname shibuya
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shibuya/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/shibuya"

# start frr
/usr/lib/frr/frrinit.sh start "shibuya"

# ospf setting
ip netns exec shibuya vtysh -N shibuya -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: ogikubo
[ -d /etc/netns/ogikubo ] || mkdir -p /etc/netns/ogikubo/
ln -sf /etc/netns/honancho/hosts /etc/netns/ogikubo/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/ogikubo" ]; then
	mkdir "/etc/frr/ogikubo"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ogikubo/vtysh.conf
no service integrated-vtysh-config
hostname ogikubo
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ogikubo/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/ogikubo"

# start frr
/usr/lib/frr/frrinit.sh start "ogikubo"

# ospf setting
ip netns exec ogikubo vtysh -N ogikubo -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: minamiasagaya
[ -d /etc/netns/minamiasagaya ] || mkdir -p /etc/netns/minamiasagaya/
ln -sf /etc/netns/honancho/hosts /etc/netns/minamiasagaya/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/minamiasagaya" ]; then
	mkdir "/etc/frr/minamiasagaya"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/minamiasagaya/vtysh.conf
no service integrated-vtysh-config
hostname minamiasagaya
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/minamiasagaya/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/minamiasagaya"

# start frr
/usr/lib/frr/frrinit.sh start "minamiasagaya"

# ospf setting
ip netns exec minamiasagaya vtysh -N minamiasagaya -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: shinkoenji
[ -d /etc/netns/shinkoenji ] || mkdir -p /etc/netns/shinkoenji/
ln -sf /etc/netns/honancho/hosts /etc/netns/shinkoenji/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/shinkoenji" ]; then
	mkdir "/etc/frr/shinkoenji"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shinkoenji/vtysh.conf
no service integrated-vtysh-config
hostname shinkoenji
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shinkoenji/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/shinkoenji"

# start frr
/usr/lib/frr/frrinit.sh start "shinkoenji"

# ospf setting
ip netns exec shinkoenji vtysh -N shinkoenji -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: higashikoenji
[ -d /etc/netns/higashikoenji ] || mkdir -p /etc/netns/higashikoenji/
ln -sf /etc/netns/honancho/hosts /etc/netns/higashikoenji/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/higashikoenji" ]; then
	mkdir "/etc/frr/higashikoenji"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/higashikoenji/vtysh.conf
no service integrated-vtysh-config
hostname higashikoenji
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/higashikoenji/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/higashikoenji"

# start frr
/usr/lib/frr/frrinit.sh start "higashikoenji"

# ospf setting
ip netns exec higashikoenji vtysh -N higashikoenji -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: shinnakano
[ -d /etc/netns/shinnakano ] || mkdir -p /etc/netns/shinnakano/
ln -sf /etc/netns/honancho/hosts /etc/netns/shinnakano/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/shinnakano" ]; then
	mkdir "/etc/frr/shinnakano"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shinnakano/vtysh.conf
no service integrated-vtysh-config
hostname shinnakano
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shinnakano/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/shinnakano"

# start frr
/usr/lib/frr/frrinit.sh start "shinnakano"

# ospf setting
ip netns exec shinnakano vtysh -N shinnakano -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: nakanosakaue
[ -d /etc/netns/nakanosakaue ] || mkdir -p /etc/netns/nakanosakaue/
ln -sf /etc/netns/honancho/hosts /etc/netns/nakanosakaue/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/nakanosakaue" ]; then
	mkdir "/etc/frr/nakanosakaue"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nakanosakaue/vtysh.conf
no service integrated-vtysh-config
hostname nakanosakaue
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nakanosakaue/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/nakanosakaue"

# start frr
/usr/lib/frr/frrinit.sh start "nakanosakaue"

# ospf setting
ip netns exec nakanosakaue vtysh -N nakanosakaue -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: nishishinjuku
[ -d /etc/netns/nishishinjuku ] || mkdir -p /etc/netns/nishishinjuku/
ln -sf /etc/netns/honancho/hosts /etc/netns/nishishinjuku/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/nishishinjuku" ]; then
	mkdir "/etc/frr/nishishinjuku"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nishishinjuku/vtysh.conf
no service integrated-vtysh-config
hostname nishishinjuku
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nishishinjuku/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/nishishinjuku"

# start frr
/usr/lib/frr/frrinit.sh start "nishishinjuku"

# ospf setting
ip netns exec nishishinjuku vtysh -N nishishinjuku -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: shinjuku
[ -d /etc/netns/shinjuku ] || mkdir -p /etc/netns/shinjuku/
ln -sf /etc/netns/honancho/hosts /etc/netns/shinjuku/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/shinjuku" ]; then
	mkdir "/etc/frr/shinjuku"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shinjuku/vtysh.conf
no service integrated-vtysh-config
hostname shinjuku
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shinjuku/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/shinjuku"

# start frr
/usr/lib/frr/frrinit.sh start "shinjuku"

# ospf setting
ip netns exec shinjuku vtysh -N shinjuku -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: shinjukusanchome
[ -d /etc/netns/shinjukusanchome ] || mkdir -p /etc/netns/shinjukusanchome/
ln -sf /etc/netns/honancho/hosts /etc/netns/shinjukusanchome/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/shinjukusanchome" ]; then
	mkdir "/etc/frr/shinjukusanchome"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shinjukusanchome/vtysh.conf
no service integrated-vtysh-config
hostname shinjukusanchome
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shinjukusanchome/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/shinjukusanchome"

# start frr
/usr/lib/frr/frrinit.sh start "shinjukusanchome"

# ospf setting
ip netns exec shinjukusanchome vtysh -N shinjukusanchome -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: shinjukugyoemmae
[ -d /etc/netns/shinjukugyoemmae ] || mkdir -p /etc/netns/shinjukugyoemmae/
ln -sf /etc/netns/honancho/hosts /etc/netns/shinjukugyoemmae/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/shinjukugyoemmae" ]; then
	mkdir "/etc/frr/shinjukugyoemmae"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shinjukugyoemmae/vtysh.conf
no service integrated-vtysh-config
hostname shinjukugyoemmae
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shinjukugyoemmae/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/shinjukugyoemmae"

# start frr
/usr/lib/frr/frrinit.sh start "shinjukugyoemmae"

# ospf setting
ip netns exec shinjukugyoemmae vtysh -N shinjukugyoemmae -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: yotsuyasanchome
[ -d /etc/netns/yotsuyasanchome ] || mkdir -p /etc/netns/yotsuyasanchome/
ln -sf /etc/netns/honancho/hosts /etc/netns/yotsuyasanchome/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/yotsuyasanchome" ]; then
	mkdir "/etc/frr/yotsuyasanchome"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/yotsuyasanchome/vtysh.conf
no service integrated-vtysh-config
hostname yotsuyasanchome
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/yotsuyasanchome/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/yotsuyasanchome"

# start frr
/usr/lib/frr/frrinit.sh start "yotsuyasanchome"

# ospf setting
ip netns exec yotsuyasanchome vtysh -N yotsuyasanchome -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: yotsuya
[ -d /etc/netns/yotsuya ] || mkdir -p /etc/netns/yotsuya/
ln -sf /etc/netns/honancho/hosts /etc/netns/yotsuya/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/yotsuya" ]; then
	mkdir "/etc/frr/yotsuya"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/yotsuya/vtysh.conf
no service integrated-vtysh-config
hostname yotsuya
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/yotsuya/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/yotsuya"

# start frr
/usr/lib/frr/frrinit.sh start "yotsuya"

# ospf setting
ip netns exec yotsuya vtysh -N yotsuya -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: kokkaigijidomae
[ -d /etc/netns/kokkaigijidomae ] || mkdir -p /etc/netns/kokkaigijidomae/
ln -sf /etc/netns/honancho/hosts /etc/netns/kokkaigijidomae/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/kokkaigijidomae" ]; then
	mkdir "/etc/frr/kokkaigijidomae"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kokkaigijidomae/vtysh.conf
no service integrated-vtysh-config
hostname kokkaigijidomae
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kokkaigijidomae/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/kokkaigijidomae"

# start frr
/usr/lib/frr/frrinit.sh start "kokkaigijidomae"

# ospf setting
ip netns exec kokkaigijidomae vtysh -N kokkaigijidomae -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: kasumigaseki
[ -d /etc/netns/kasumigaseki ] || mkdir -p /etc/netns/kasumigaseki/
ln -sf /etc/netns/honancho/hosts /etc/netns/kasumigaseki/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/kasumigaseki" ]; then
	mkdir "/etc/frr/kasumigaseki"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kasumigaseki/vtysh.conf
no service integrated-vtysh-config
hostname kasumigaseki
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kasumigaseki/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/kasumigaseki"

# start frr
/usr/lib/frr/frrinit.sh start "kasumigaseki"

# ospf setting
ip netns exec kasumigaseki vtysh -N kasumigaseki -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: tokyo
[ -d /etc/netns/tokyo ] || mkdir -p /etc/netns/tokyo/
ln -sf /etc/netns/honancho/hosts /etc/netns/tokyo/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/tokyo" ]; then
	mkdir "/etc/frr/tokyo"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/tokyo/vtysh.conf
no service integrated-vtysh-config
hostname tokyo
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/tokyo/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/tokyo"

# start frr
/usr/lib/frr/frrinit.sh start "tokyo"

# ospf setting
ip netns exec tokyo vtysh -N tokyo -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: otemachi
[ -d /etc/netns/otemachi ] || mkdir -p /etc/netns/otemachi/
ln -sf /etc/netns/honancho/hosts /etc/netns/otemachi/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/otemachi" ]; then
	mkdir "/etc/frr/otemachi"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/otemachi/vtysh.conf
no service integrated-vtysh-config
hostname otemachi
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/otemachi/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/otemachi"

# start frr
/usr/lib/frr/frrinit.sh start "otemachi"

# ospf setting
ip netns exec otemachi vtysh -N otemachi -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: awajicho
[ -d /etc/netns/awajicho ] || mkdir -p /etc/netns/awajicho/
ln -sf /etc/netns/honancho/hosts /etc/netns/awajicho/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/awajicho" ]; then
	mkdir "/etc/frr/awajicho"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/awajicho/vtysh.conf
no service integrated-vtysh-config
hostname awajicho
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/awajicho/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/awajicho"

# start frr
/usr/lib/frr/frrinit.sh start "awajicho"

# ospf setting
ip netns exec awajicho vtysh -N awajicho -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: ochanomizu
[ -d /etc/netns/ochanomizu ] || mkdir -p /etc/netns/ochanomizu/
ln -sf /etc/netns/honancho/hosts /etc/netns/ochanomizu/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/ochanomizu" ]; then
	mkdir "/etc/frr/ochanomizu"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ochanomizu/vtysh.conf
no service integrated-vtysh-config
hostname ochanomizu
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ochanomizu/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/ochanomizu"

# start frr
/usr/lib/frr/frrinit.sh start "ochanomizu"

# ospf setting
ip netns exec ochanomizu vtysh -N ochanomizu -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: hongosanchome
[ -d /etc/netns/hongosanchome ] || mkdir -p /etc/netns/hongosanchome/
ln -sf /etc/netns/honancho/hosts /etc/netns/hongosanchome/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/hongosanchome" ]; then
	mkdir "/etc/frr/hongosanchome"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/hongosanchome/vtysh.conf
no service integrated-vtysh-config
hostname hongosanchome
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/hongosanchome/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/hongosanchome"

# start frr
/usr/lib/frr/frrinit.sh start "hongosanchome"

# ospf setting
ip netns exec hongosanchome vtysh -N hongosanchome -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: korakuen
[ -d /etc/netns/korakuen ] || mkdir -p /etc/netns/korakuen/
ln -sf /etc/netns/honancho/hosts /etc/netns/korakuen/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/korakuen" ]; then
	mkdir "/etc/frr/korakuen"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/korakuen/vtysh.conf
no service integrated-vtysh-config
hostname korakuen
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/korakuen/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/korakuen"

# start frr
/usr/lib/frr/frrinit.sh start "korakuen"

# ospf setting
ip netns exec korakuen vtysh -N korakuen -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: myogadani
[ -d /etc/netns/myogadani ] || mkdir -p /etc/netns/myogadani/
ln -sf /etc/netns/honancho/hosts /etc/netns/myogadani/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/myogadani" ]; then
	mkdir "/etc/frr/myogadani"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/myogadani/vtysh.conf
no service integrated-vtysh-config
hostname myogadani
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/myogadani/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/myogadani"

# start frr
/usr/lib/frr/frrinit.sh start "myogadani"

# ospf setting
ip netns exec myogadani vtysh -N myogadani -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: shinotsuka
[ -d /etc/netns/shinotsuka ] || mkdir -p /etc/netns/shinotsuka/
ln -sf /etc/netns/honancho/hosts /etc/netns/shinotsuka/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/shinotsuka" ]; then
	mkdir "/etc/frr/shinotsuka"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shinotsuka/vtysh.conf
no service integrated-vtysh-config
hostname shinotsuka
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shinotsuka/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/shinotsuka"

# start frr
/usr/lib/frr/frrinit.sh start "shinotsuka"

# ospf setting
ip netns exec shinotsuka vtysh -N shinotsuka -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: ikebukuro
[ -d /etc/netns/ikebukuro ] || mkdir -p /etc/netns/ikebukuro/
ln -sf /etc/netns/honancho/hosts /etc/netns/ikebukuro/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/ikebukuro" ]; then
	mkdir "/etc/frr/ikebukuro"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ikebukuro/vtysh.conf
no service integrated-vtysh-config
hostname ikebukuro
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ikebukuro/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/ikebukuro"

# start frr
/usr/lib/frr/frrinit.sh start "ikebukuro"

# ospf setting
ip netns exec ikebukuro vtysh -N ikebukuro -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: kitasenju
[ -d /etc/netns/kitasenju ] || mkdir -p /etc/netns/kitasenju/
ln -sf /etc/netns/honancho/hosts /etc/netns/kitasenju/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/kitasenju" ]; then
	mkdir "/etc/frr/kitasenju"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kitasenju/vtysh.conf
no service integrated-vtysh-config
hostname kitasenju
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kitasenju/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/kitasenju"

# start frr
/usr/lib/frr/frrinit.sh start "kitasenju"

# ospf setting
ip netns exec kitasenju vtysh -N kitasenju -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: minamisenju
[ -d /etc/netns/minamisenju ] || mkdir -p /etc/netns/minamisenju/
ln -sf /etc/netns/honancho/hosts /etc/netns/minamisenju/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/minamisenju" ]; then
	mkdir "/etc/frr/minamisenju"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/minamisenju/vtysh.conf
no service integrated-vtysh-config
hostname minamisenju
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/minamisenju/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/minamisenju"

# start frr
/usr/lib/frr/frrinit.sh start "minamisenju"

# ospf setting
ip netns exec minamisenju vtysh -N minamisenju -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: minowa
[ -d /etc/netns/minowa ] || mkdir -p /etc/netns/minowa/
ln -sf /etc/netns/honancho/hosts /etc/netns/minowa/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/minowa" ]; then
	mkdir "/etc/frr/minowa"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/minowa/vtysh.conf
no service integrated-vtysh-config
hostname minowa
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/minowa/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/minowa"

# start frr
/usr/lib/frr/frrinit.sh start "minowa"

# ospf setting
ip netns exec minowa vtysh -N minowa -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: iriya
[ -d /etc/netns/iriya ] || mkdir -p /etc/netns/iriya/
ln -sf /etc/netns/honancho/hosts /etc/netns/iriya/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/iriya" ]; then
	mkdir "/etc/frr/iriya"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/iriya/vtysh.conf
no service integrated-vtysh-config
hostname iriya
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/iriya/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/iriya"

# start frr
/usr/lib/frr/frrinit.sh start "iriya"

# ospf setting
ip netns exec iriya vtysh -N iriya -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: nakaokachimachi
[ -d /etc/netns/nakaokachimachi ] || mkdir -p /etc/netns/nakaokachimachi/
ln -sf /etc/netns/honancho/hosts /etc/netns/nakaokachimachi/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/nakaokachimachi" ]; then
	mkdir "/etc/frr/nakaokachimachi"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nakaokachimachi/vtysh.conf
no service integrated-vtysh-config
hostname nakaokachimachi
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nakaokachimachi/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/nakaokachimachi"

# start frr
/usr/lib/frr/frrinit.sh start "nakaokachimachi"

# ospf setting
ip netns exec nakaokachimachi vtysh -N nakaokachimachi -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: akihabara
[ -d /etc/netns/akihabara ] || mkdir -p /etc/netns/akihabara/
ln -sf /etc/netns/honancho/hosts /etc/netns/akihabara/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/akihabara" ]; then
	mkdir "/etc/frr/akihabara"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/akihabara/vtysh.conf
no service integrated-vtysh-config
hostname akihabara
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/akihabara/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/akihabara"

# start frr
/usr/lib/frr/frrinit.sh start "akihabara"

# ospf setting
ip netns exec akihabara vtysh -N akihabara -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: kodemmacho
[ -d /etc/netns/kodemmacho ] || mkdir -p /etc/netns/kodemmacho/
ln -sf /etc/netns/honancho/hosts /etc/netns/kodemmacho/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/kodemmacho" ]; then
	mkdir "/etc/frr/kodemmacho"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kodemmacho/vtysh.conf
no service integrated-vtysh-config
hostname kodemmacho
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kodemmacho/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/kodemmacho"

# start frr
/usr/lib/frr/frrinit.sh start "kodemmacho"

# ospf setting
ip netns exec kodemmacho vtysh -N kodemmacho -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: ningyocho
[ -d /etc/netns/ningyocho ] || mkdir -p /etc/netns/ningyocho/
ln -sf /etc/netns/honancho/hosts /etc/netns/ningyocho/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/ningyocho" ]; then
	mkdir "/etc/frr/ningyocho"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ningyocho/vtysh.conf
no service integrated-vtysh-config
hostname ningyocho
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ningyocho/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/ningyocho"

# start frr
/usr/lib/frr/frrinit.sh start "ningyocho"

# ospf setting
ip netns exec ningyocho vtysh -N ningyocho -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: kayabacho
[ -d /etc/netns/kayabacho ] || mkdir -p /etc/netns/kayabacho/
ln -sf /etc/netns/honancho/hosts /etc/netns/kayabacho/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/kayabacho" ]; then
	mkdir "/etc/frr/kayabacho"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kayabacho/vtysh.conf
no service integrated-vtysh-config
hostname kayabacho
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kayabacho/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/kayabacho"

# start frr
/usr/lib/frr/frrinit.sh start "kayabacho"

# ospf setting
ip netns exec kayabacho vtysh -N kayabacho -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: hatchobori
[ -d /etc/netns/hatchobori ] || mkdir -p /etc/netns/hatchobori/
ln -sf /etc/netns/honancho/hosts /etc/netns/hatchobori/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/hatchobori" ]; then
	mkdir "/etc/frr/hatchobori"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/hatchobori/vtysh.conf
no service integrated-vtysh-config
hostname hatchobori
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/hatchobori/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/hatchobori"

# start frr
/usr/lib/frr/frrinit.sh start "hatchobori"

# ospf setting
ip netns exec hatchobori vtysh -N hatchobori -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: tsukiji
[ -d /etc/netns/tsukiji ] || mkdir -p /etc/netns/tsukiji/
ln -sf /etc/netns/honancho/hosts /etc/netns/tsukiji/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/tsukiji" ]; then
	mkdir "/etc/frr/tsukiji"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/tsukiji/vtysh.conf
no service integrated-vtysh-config
hostname tsukiji
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/tsukiji/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/tsukiji"

# start frr
/usr/lib/frr/frrinit.sh start "tsukiji"

# ospf setting
ip netns exec tsukiji vtysh -N tsukiji -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: higashiginza
[ -d /etc/netns/higashiginza ] || mkdir -p /etc/netns/higashiginza/
ln -sf /etc/netns/honancho/hosts /etc/netns/higashiginza/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/higashiginza" ]; then
	mkdir "/etc/frr/higashiginza"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/higashiginza/vtysh.conf
no service integrated-vtysh-config
hostname higashiginza
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/higashiginza/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/higashiginza"

# start frr
/usr/lib/frr/frrinit.sh start "higashiginza"

# ospf setting
ip netns exec higashiginza vtysh -N higashiginza -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: hibiya
[ -d /etc/netns/hibiya ] || mkdir -p /etc/netns/hibiya/
ln -sf /etc/netns/honancho/hosts /etc/netns/hibiya/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/hibiya" ]; then
	mkdir "/etc/frr/hibiya"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/hibiya/vtysh.conf
no service integrated-vtysh-config
hostname hibiya
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/hibiya/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/hibiya"

# start frr
/usr/lib/frr/frrinit.sh start "hibiya"

# ospf setting
ip netns exec hibiya vtysh -N hibiya -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: toranomonhiruzu
[ -d /etc/netns/toranomonhiruzu ] || mkdir -p /etc/netns/toranomonhiruzu/
ln -sf /etc/netns/honancho/hosts /etc/netns/toranomonhiruzu/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/toranomonhiruzu" ]; then
	mkdir "/etc/frr/toranomonhiruzu"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/toranomonhiruzu/vtysh.conf
no service integrated-vtysh-config
hostname toranomonhiruzu
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/toranomonhiruzu/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/toranomonhiruzu"

# start frr
/usr/lib/frr/frrinit.sh start "toranomonhiruzu"

# ospf setting
ip netns exec toranomonhiruzu vtysh -N toranomonhiruzu -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: kamiyacho
[ -d /etc/netns/kamiyacho ] || mkdir -p /etc/netns/kamiyacho/
ln -sf /etc/netns/honancho/hosts /etc/netns/kamiyacho/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/kamiyacho" ]; then
	mkdir "/etc/frr/kamiyacho"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kamiyacho/vtysh.conf
no service integrated-vtysh-config
hostname kamiyacho
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kamiyacho/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/kamiyacho"

# start frr
/usr/lib/frr/frrinit.sh start "kamiyacho"

# ospf setting
ip netns exec kamiyacho vtysh -N kamiyacho -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: roppongi
[ -d /etc/netns/roppongi ] || mkdir -p /etc/netns/roppongi/
ln -sf /etc/netns/honancho/hosts /etc/netns/roppongi/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/roppongi" ]; then
	mkdir "/etc/frr/roppongi"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/roppongi/vtysh.conf
no service integrated-vtysh-config
hostname roppongi
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/roppongi/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/roppongi"

# start frr
/usr/lib/frr/frrinit.sh start "roppongi"

# ospf setting
ip netns exec roppongi vtysh -N roppongi -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: hiroo
[ -d /etc/netns/hiroo ] || mkdir -p /etc/netns/hiroo/
ln -sf /etc/netns/honancho/hosts /etc/netns/hiroo/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/hiroo" ]; then
	mkdir "/etc/frr/hiroo"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/hiroo/vtysh.conf
no service integrated-vtysh-config
hostname hiroo
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/hiroo/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/hiroo"

# start frr
/usr/lib/frr/frrinit.sh start "hiroo"

# ospf setting
ip netns exec hiroo vtysh -N hiroo -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: ebisu
[ -d /etc/netns/ebisu ] || mkdir -p /etc/netns/ebisu/
ln -sf /etc/netns/honancho/hosts /etc/netns/ebisu/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/ebisu" ]; then
	mkdir "/etc/frr/ebisu"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ebisu/vtysh.conf
no service integrated-vtysh-config
hostname ebisu
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ebisu/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/ebisu"

# start frr
/usr/lib/frr/frrinit.sh start "ebisu"

# ospf setting
ip netns exec ebisu vtysh -N ebisu -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: nakameguro
[ -d /etc/netns/nakameguro ] || mkdir -p /etc/netns/nakameguro/
ln -sf /etc/netns/honancho/hosts /etc/netns/nakameguro/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/nakameguro" ]; then
	mkdir "/etc/frr/nakameguro"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nakameguro/vtysh.conf
no service integrated-vtysh-config
hostname nakameguro
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nakameguro/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/nakameguro"

# start frr
/usr/lib/frr/frrinit.sh start "nakameguro"

# ospf setting
ip netns exec nakameguro vtysh -N nakameguro -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: nakano
[ -d /etc/netns/nakano ] || mkdir -p /etc/netns/nakano/
ln -sf /etc/netns/honancho/hosts /etc/netns/nakano/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/nakano" ]; then
	mkdir "/etc/frr/nakano"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nakano/vtysh.conf
no service integrated-vtysh-config
hostname nakano
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nakano/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/nakano"

# start frr
/usr/lib/frr/frrinit.sh start "nakano"

# ospf setting
ip netns exec nakano vtysh -N nakano -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: ochiai
[ -d /etc/netns/ochiai ] || mkdir -p /etc/netns/ochiai/
ln -sf /etc/netns/honancho/hosts /etc/netns/ochiai/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/ochiai" ]; then
	mkdir "/etc/frr/ochiai"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ochiai/vtysh.conf
no service integrated-vtysh-config
hostname ochiai
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ochiai/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/ochiai"

# start frr
/usr/lib/frr/frrinit.sh start "ochiai"

# ospf setting
ip netns exec ochiai vtysh -N ochiai -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: takadanobaba
[ -d /etc/netns/takadanobaba ] || mkdir -p /etc/netns/takadanobaba/
ln -sf /etc/netns/honancho/hosts /etc/netns/takadanobaba/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/takadanobaba" ]; then
	mkdir "/etc/frr/takadanobaba"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/takadanobaba/vtysh.conf
no service integrated-vtysh-config
hostname takadanobaba
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/takadanobaba/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/takadanobaba"

# start frr
/usr/lib/frr/frrinit.sh start "takadanobaba"

# ospf setting
ip netns exec takadanobaba vtysh -N takadanobaba -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: waseda
[ -d /etc/netns/waseda ] || mkdir -p /etc/netns/waseda/
ln -sf /etc/netns/honancho/hosts /etc/netns/waseda/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/waseda" ]; then
	mkdir "/etc/frr/waseda"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/waseda/vtysh.conf
no service integrated-vtysh-config
hostname waseda
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/waseda/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/waseda"

# start frr
/usr/lib/frr/frrinit.sh start "waseda"

# ospf setting
ip netns exec waseda vtysh -N waseda -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: kagurazaka
[ -d /etc/netns/kagurazaka ] || mkdir -p /etc/netns/kagurazaka/
ln -sf /etc/netns/honancho/hosts /etc/netns/kagurazaka/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/kagurazaka" ]; then
	mkdir "/etc/frr/kagurazaka"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kagurazaka/vtysh.conf
no service integrated-vtysh-config
hostname kagurazaka
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kagurazaka/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/kagurazaka"

# start frr
/usr/lib/frr/frrinit.sh start "kagurazaka"

# ospf setting
ip netns exec kagurazaka vtysh -N kagurazaka -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: iidabashi
[ -d /etc/netns/iidabashi ] || mkdir -p /etc/netns/iidabashi/
ln -sf /etc/netns/honancho/hosts /etc/netns/iidabashi/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/iidabashi" ]; then
	mkdir "/etc/frr/iidabashi"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/iidabashi/vtysh.conf
no service integrated-vtysh-config
hostname iidabashi
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/iidabashi/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/iidabashi"

# start frr
/usr/lib/frr/frrinit.sh start "iidabashi"

# ospf setting
ip netns exec iidabashi vtysh -N iidabashi -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: kudanshita
[ -d /etc/netns/kudanshita ] || mkdir -p /etc/netns/kudanshita/
ln -sf /etc/netns/honancho/hosts /etc/netns/kudanshita/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/kudanshita" ]; then
	mkdir "/etc/frr/kudanshita"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kudanshita/vtysh.conf
no service integrated-vtysh-config
hostname kudanshita
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kudanshita/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/kudanshita"

# start frr
/usr/lib/frr/frrinit.sh start "kudanshita"

# ospf setting
ip netns exec kudanshita vtysh -N kudanshita -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: takebashi
[ -d /etc/netns/takebashi ] || mkdir -p /etc/netns/takebashi/
ln -sf /etc/netns/honancho/hosts /etc/netns/takebashi/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/takebashi" ]; then
	mkdir "/etc/frr/takebashi"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/takebashi/vtysh.conf
no service integrated-vtysh-config
hostname takebashi
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/takebashi/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/takebashi"

# start frr
/usr/lib/frr/frrinit.sh start "takebashi"

# ospf setting
ip netns exec takebashi vtysh -N takebashi -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: monzennakacho
[ -d /etc/netns/monzennakacho ] || mkdir -p /etc/netns/monzennakacho/
ln -sf /etc/netns/honancho/hosts /etc/netns/monzennakacho/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/monzennakacho" ]; then
	mkdir "/etc/frr/monzennakacho"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/monzennakacho/vtysh.conf
no service integrated-vtysh-config
hostname monzennakacho
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/monzennakacho/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/monzennakacho"

# start frr
/usr/lib/frr/frrinit.sh start "monzennakacho"

# ospf setting
ip netns exec monzennakacho vtysh -N monzennakacho -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: kiba
[ -d /etc/netns/kiba ] || mkdir -p /etc/netns/kiba/
ln -sf /etc/netns/honancho/hosts /etc/netns/kiba/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/kiba" ]; then
	mkdir "/etc/frr/kiba"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kiba/vtysh.conf
no service integrated-vtysh-config
hostname kiba
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kiba/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/kiba"

# start frr
/usr/lib/frr/frrinit.sh start "kiba"

# ospf setting
ip netns exec kiba vtysh -N kiba -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: toyocho
[ -d /etc/netns/toyocho ] || mkdir -p /etc/netns/toyocho/
ln -sf /etc/netns/honancho/hosts /etc/netns/toyocho/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/toyocho" ]; then
	mkdir "/etc/frr/toyocho"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/toyocho/vtysh.conf
no service integrated-vtysh-config
hostname toyocho
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/toyocho/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/toyocho"

# start frr
/usr/lib/frr/frrinit.sh start "toyocho"

# ospf setting
ip netns exec toyocho vtysh -N toyocho -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: minamisunamachi
[ -d /etc/netns/minamisunamachi ] || mkdir -p /etc/netns/minamisunamachi/
ln -sf /etc/netns/honancho/hosts /etc/netns/minamisunamachi/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/minamisunamachi" ]; then
	mkdir "/etc/frr/minamisunamachi"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/minamisunamachi/vtysh.conf
no service integrated-vtysh-config
hostname minamisunamachi
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/minamisunamachi/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/minamisunamachi"

# start frr
/usr/lib/frr/frrinit.sh start "minamisunamachi"

# ospf setting
ip netns exec minamisunamachi vtysh -N minamisunamachi -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: nishikasai
[ -d /etc/netns/nishikasai ] || mkdir -p /etc/netns/nishikasai/
ln -sf /etc/netns/honancho/hosts /etc/netns/nishikasai/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/nishikasai" ]; then
	mkdir "/etc/frr/nishikasai"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nishikasai/vtysh.conf
no service integrated-vtysh-config
hostname nishikasai
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nishikasai/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/nishikasai"

# start frr
/usr/lib/frr/frrinit.sh start "nishikasai"

# ospf setting
ip netns exec nishikasai vtysh -N nishikasai -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: kasai
[ -d /etc/netns/kasai ] || mkdir -p /etc/netns/kasai/
ln -sf /etc/netns/honancho/hosts /etc/netns/kasai/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/kasai" ]; then
	mkdir "/etc/frr/kasai"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kasai/vtysh.conf
no service integrated-vtysh-config
hostname kasai
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kasai/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/kasai"

# start frr
/usr/lib/frr/frrinit.sh start "kasai"

# ospf setting
ip netns exec kasai vtysh -N kasai -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: urayasu
[ -d /etc/netns/urayasu ] || mkdir -p /etc/netns/urayasu/
ln -sf /etc/netns/honancho/hosts /etc/netns/urayasu/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/urayasu" ]; then
	mkdir "/etc/frr/urayasu"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/urayasu/vtysh.conf
no service integrated-vtysh-config
hostname urayasu
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/urayasu/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/urayasu"

# start frr
/usr/lib/frr/frrinit.sh start "urayasu"

# ospf setting
ip netns exec urayasu vtysh -N urayasu -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: minamigyotoku
[ -d /etc/netns/minamigyotoku ] || mkdir -p /etc/netns/minamigyotoku/
ln -sf /etc/netns/honancho/hosts /etc/netns/minamigyotoku/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/minamigyotoku" ]; then
	mkdir "/etc/frr/minamigyotoku"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/minamigyotoku/vtysh.conf
no service integrated-vtysh-config
hostname minamigyotoku
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/minamigyotoku/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/minamigyotoku"

# start frr
/usr/lib/frr/frrinit.sh start "minamigyotoku"

# ospf setting
ip netns exec minamigyotoku vtysh -N minamigyotoku -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: gyotoku
[ -d /etc/netns/gyotoku ] || mkdir -p /etc/netns/gyotoku/
ln -sf /etc/netns/honancho/hosts /etc/netns/gyotoku/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/gyotoku" ]; then
	mkdir "/etc/frr/gyotoku"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/gyotoku/vtysh.conf
no service integrated-vtysh-config
hostname gyotoku
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/gyotoku/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/gyotoku"

# start frr
/usr/lib/frr/frrinit.sh start "gyotoku"

# ospf setting
ip netns exec gyotoku vtysh -N gyotoku -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: myoden
[ -d /etc/netns/myoden ] || mkdir -p /etc/netns/myoden/
ln -sf /etc/netns/honancho/hosts /etc/netns/myoden/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/myoden" ]; then
	mkdir "/etc/frr/myoden"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/myoden/vtysh.conf
no service integrated-vtysh-config
hostname myoden
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/myoden/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/myoden"

# start frr
/usr/lib/frr/frrinit.sh start "myoden"

# ospf setting
ip netns exec myoden vtysh -N myoden -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: barakinakayama
[ -d /etc/netns/barakinakayama ] || mkdir -p /etc/netns/barakinakayama/
ln -sf /etc/netns/honancho/hosts /etc/netns/barakinakayama/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/barakinakayama" ]; then
	mkdir "/etc/frr/barakinakayama"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/barakinakayama/vtysh.conf
no service integrated-vtysh-config
hostname barakinakayama
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/barakinakayama/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/barakinakayama"

# start frr
/usr/lib/frr/frrinit.sh start "barakinakayama"

# ospf setting
ip netns exec barakinakayama vtysh -N barakinakayama -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: nishifunabashi
[ -d /etc/netns/nishifunabashi ] || mkdir -p /etc/netns/nishifunabashi/
ln -sf /etc/netns/honancho/hosts /etc/netns/nishifunabashi/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/nishifunabashi" ]; then
	mkdir "/etc/frr/nishifunabashi"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nishifunabashi/vtysh.conf
no service integrated-vtysh-config
hostname nishifunabashi
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nishifunabashi/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/nishifunabashi"

# start frr
/usr/lib/frr/frrinit.sh start "nishifunabashi"

# ospf setting
ip netns exec nishifunabashi vtysh -N nishifunabashi -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: kitaayase
[ -d /etc/netns/kitaayase ] || mkdir -p /etc/netns/kitaayase/
ln -sf /etc/netns/honancho/hosts /etc/netns/kitaayase/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/kitaayase" ]; then
	mkdir "/etc/frr/kitaayase"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kitaayase/vtysh.conf
no service integrated-vtysh-config
hostname kitaayase
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kitaayase/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/kitaayase"

# start frr
/usr/lib/frr/frrinit.sh start "kitaayase"

# ospf setting
ip netns exec kitaayase vtysh -N kitaayase -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: ayase
[ -d /etc/netns/ayase ] || mkdir -p /etc/netns/ayase/
ln -sf /etc/netns/honancho/hosts /etc/netns/ayase/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/ayase" ]; then
	mkdir "/etc/frr/ayase"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ayase/vtysh.conf
no service integrated-vtysh-config
hostname ayase
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ayase/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/ayase"

# start frr
/usr/lib/frr/frrinit.sh start "ayase"

# ospf setting
ip netns exec ayase vtysh -N ayase -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: machiya
[ -d /etc/netns/machiya ] || mkdir -p /etc/netns/machiya/
ln -sf /etc/netns/honancho/hosts /etc/netns/machiya/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/machiya" ]; then
	mkdir "/etc/frr/machiya"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/machiya/vtysh.conf
no service integrated-vtysh-config
hostname machiya
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/machiya/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/machiya"

# start frr
/usr/lib/frr/frrinit.sh start "machiya"

# ospf setting
ip netns exec machiya vtysh -N machiya -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: nishinippori
[ -d /etc/netns/nishinippori ] || mkdir -p /etc/netns/nishinippori/
ln -sf /etc/netns/honancho/hosts /etc/netns/nishinippori/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/nishinippori" ]; then
	mkdir "/etc/frr/nishinippori"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nishinippori/vtysh.conf
no service integrated-vtysh-config
hostname nishinippori
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nishinippori/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/nishinippori"

# start frr
/usr/lib/frr/frrinit.sh start "nishinippori"

# ospf setting
ip netns exec nishinippori vtysh -N nishinippori -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: sendagi
[ -d /etc/netns/sendagi ] || mkdir -p /etc/netns/sendagi/
ln -sf /etc/netns/honancho/hosts /etc/netns/sendagi/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/sendagi" ]; then
	mkdir "/etc/frr/sendagi"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/sendagi/vtysh.conf
no service integrated-vtysh-config
hostname sendagi
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/sendagi/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/sendagi"

# start frr
/usr/lib/frr/frrinit.sh start "sendagi"

# ospf setting
ip netns exec sendagi vtysh -N sendagi -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: nezu
[ -d /etc/netns/nezu ] || mkdir -p /etc/netns/nezu/
ln -sf /etc/netns/honancho/hosts /etc/netns/nezu/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/nezu" ]; then
	mkdir "/etc/frr/nezu"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nezu/vtysh.conf
no service integrated-vtysh-config
hostname nezu
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nezu/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/nezu"

# start frr
/usr/lib/frr/frrinit.sh start "nezu"

# ospf setting
ip netns exec nezu vtysh -N nezu -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: yushima
[ -d /etc/netns/yushima ] || mkdir -p /etc/netns/yushima/
ln -sf /etc/netns/honancho/hosts /etc/netns/yushima/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/yushima" ]; then
	mkdir "/etc/frr/yushima"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/yushima/vtysh.conf
no service integrated-vtysh-config
hostname yushima
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/yushima/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/yushima"

# start frr
/usr/lib/frr/frrinit.sh start "yushima"

# ospf setting
ip netns exec yushima vtysh -N yushima -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: shinochanomizu
[ -d /etc/netns/shinochanomizu ] || mkdir -p /etc/netns/shinochanomizu/
ln -sf /etc/netns/honancho/hosts /etc/netns/shinochanomizu/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/shinochanomizu" ]; then
	mkdir "/etc/frr/shinochanomizu"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shinochanomizu/vtysh.conf
no service integrated-vtysh-config
hostname shinochanomizu
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shinochanomizu/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/shinochanomizu"

# start frr
/usr/lib/frr/frrinit.sh start "shinochanomizu"

# ospf setting
ip netns exec shinochanomizu vtysh -N shinochanomizu -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: nijubashimae
[ -d /etc/netns/nijubashimae ] || mkdir -p /etc/netns/nijubashimae/
ln -sf /etc/netns/honancho/hosts /etc/netns/nijubashimae/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/nijubashimae" ]; then
	mkdir "/etc/frr/nijubashimae"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nijubashimae/vtysh.conf
no service integrated-vtysh-config
hostname nijubashimae
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nijubashimae/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/nijubashimae"

# start frr
/usr/lib/frr/frrinit.sh start "nijubashimae"

# ospf setting
ip netns exec nijubashimae vtysh -N nijubashimae -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: akasaka
[ -d /etc/netns/akasaka ] || mkdir -p /etc/netns/akasaka/
ln -sf /etc/netns/honancho/hosts /etc/netns/akasaka/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/akasaka" ]; then
	mkdir "/etc/frr/akasaka"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/akasaka/vtysh.conf
no service integrated-vtysh-config
hostname akasaka
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/akasaka/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/akasaka"

# start frr
/usr/lib/frr/frrinit.sh start "akasaka"

# ospf setting
ip netns exec akasaka vtysh -N akasaka -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: nogizaka
[ -d /etc/netns/nogizaka ] || mkdir -p /etc/netns/nogizaka/
ln -sf /etc/netns/honancho/hosts /etc/netns/nogizaka/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/nogizaka" ]; then
	mkdir "/etc/frr/nogizaka"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nogizaka/vtysh.conf
no service integrated-vtysh-config
hostname nogizaka
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nogizaka/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/nogizaka"

# start frr
/usr/lib/frr/frrinit.sh start "nogizaka"

# ospf setting
ip netns exec nogizaka vtysh -N nogizaka -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: meijijingumae
[ -d /etc/netns/meijijingumae ] || mkdir -p /etc/netns/meijijingumae/
ln -sf /etc/netns/honancho/hosts /etc/netns/meijijingumae/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/meijijingumae" ]; then
	mkdir "/etc/frr/meijijingumae"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/meijijingumae/vtysh.conf
no service integrated-vtysh-config
hostname meijijingumae
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/meijijingumae/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/meijijingumae"

# start frr
/usr/lib/frr/frrinit.sh start "meijijingumae"

# ospf setting
ip netns exec meijijingumae vtysh -N meijijingumae -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: yoyogikoen
[ -d /etc/netns/yoyogikoen ] || mkdir -p /etc/netns/yoyogikoen/
ln -sf /etc/netns/honancho/hosts /etc/netns/yoyogikoen/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/yoyogikoen" ]; then
	mkdir "/etc/frr/yoyogikoen"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/yoyogikoen/vtysh.conf
no service integrated-vtysh-config
hostname yoyogikoen
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/yoyogikoen/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/yoyogikoen"

# start frr
/usr/lib/frr/frrinit.sh start "yoyogikoen"

# ospf setting
ip netns exec yoyogikoen vtysh -N yoyogikoen -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: yoyogiuehara
[ -d /etc/netns/yoyogiuehara ] || mkdir -p /etc/netns/yoyogiuehara/
ln -sf /etc/netns/honancho/hosts /etc/netns/yoyogiuehara/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/yoyogiuehara" ]; then
	mkdir "/etc/frr/yoyogiuehara"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/yoyogiuehara/vtysh.conf
no service integrated-vtysh-config
hostname yoyogiuehara
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/yoyogiuehara/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/yoyogiuehara"

# start frr
/usr/lib/frr/frrinit.sh start "yoyogiuehara"

# ospf setting
ip netns exec yoyogiuehara vtysh -N yoyogiuehara -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: wakoshi
[ -d /etc/netns/wakoshi ] || mkdir -p /etc/netns/wakoshi/
ln -sf /etc/netns/honancho/hosts /etc/netns/wakoshi/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/wakoshi" ]; then
	mkdir "/etc/frr/wakoshi"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/wakoshi/vtysh.conf
no service integrated-vtysh-config
hostname wakoshi
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/wakoshi/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/wakoshi"

# start frr
/usr/lib/frr/frrinit.sh start "wakoshi"

# ospf setting
ip netns exec wakoshi vtysh -N wakoshi -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: chikatetsunarimasu
[ -d /etc/netns/chikatetsunarimasu ] || mkdir -p /etc/netns/chikatetsunarimasu/
ln -sf /etc/netns/honancho/hosts /etc/netns/chikatetsunarimasu/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/chikatetsunarimasu" ]; then
	mkdir "/etc/frr/chikatetsunarimasu"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/chikatetsunarimasu/vtysh.conf
no service integrated-vtysh-config
hostname chikatetsunarimasu
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/chikatetsunarimasu/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/chikatetsunarimasu"

# start frr
/usr/lib/frr/frrinit.sh start "chikatetsunarimasu"

# ospf setting
ip netns exec chikatetsunarimasu vtysh -N chikatetsunarimasu -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: chikatetsuakatsuka
[ -d /etc/netns/chikatetsuakatsuka ] || mkdir -p /etc/netns/chikatetsuakatsuka/
ln -sf /etc/netns/honancho/hosts /etc/netns/chikatetsuakatsuka/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/chikatetsuakatsuka" ]; then
	mkdir "/etc/frr/chikatetsuakatsuka"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/chikatetsuakatsuka/vtysh.conf
no service integrated-vtysh-config
hostname chikatetsuakatsuka
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/chikatetsuakatsuka/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/chikatetsuakatsuka"

# start frr
/usr/lib/frr/frrinit.sh start "chikatetsuakatsuka"

# ospf setting
ip netns exec chikatetsuakatsuka vtysh -N chikatetsuakatsuka -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: heiwadai
[ -d /etc/netns/heiwadai ] || mkdir -p /etc/netns/heiwadai/
ln -sf /etc/netns/honancho/hosts /etc/netns/heiwadai/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/heiwadai" ]; then
	mkdir "/etc/frr/heiwadai"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/heiwadai/vtysh.conf
no service integrated-vtysh-config
hostname heiwadai
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/heiwadai/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/heiwadai"

# start frr
/usr/lib/frr/frrinit.sh start "heiwadai"

# ospf setting
ip netns exec heiwadai vtysh -N heiwadai -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: hikawadai
[ -d /etc/netns/hikawadai ] || mkdir -p /etc/netns/hikawadai/
ln -sf /etc/netns/honancho/hosts /etc/netns/hikawadai/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/hikawadai" ]; then
	mkdir "/etc/frr/hikawadai"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/hikawadai/vtysh.conf
no service integrated-vtysh-config
hostname hikawadai
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/hikawadai/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/hikawadai"

# start frr
/usr/lib/frr/frrinit.sh start "hikawadai"

# ospf setting
ip netns exec hikawadai vtysh -N hikawadai -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: kotakemukaihara
[ -d /etc/netns/kotakemukaihara ] || mkdir -p /etc/netns/kotakemukaihara/
ln -sf /etc/netns/honancho/hosts /etc/netns/kotakemukaihara/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/kotakemukaihara" ]; then
	mkdir "/etc/frr/kotakemukaihara"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kotakemukaihara/vtysh.conf
no service integrated-vtysh-config
hostname kotakemukaihara
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kotakemukaihara/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/kotakemukaihara"

# start frr
/usr/lib/frr/frrinit.sh start "kotakemukaihara"

# ospf setting
ip netns exec kotakemukaihara vtysh -N kotakemukaihara -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: senkawa
[ -d /etc/netns/senkawa ] || mkdir -p /etc/netns/senkawa/
ln -sf /etc/netns/honancho/hosts /etc/netns/senkawa/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/senkawa" ]; then
	mkdir "/etc/frr/senkawa"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/senkawa/vtysh.conf
no service integrated-vtysh-config
hostname senkawa
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/senkawa/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/senkawa"

# start frr
/usr/lib/frr/frrinit.sh start "senkawa"

# ospf setting
ip netns exec senkawa vtysh -N senkawa -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: kanamecho
[ -d /etc/netns/kanamecho ] || mkdir -p /etc/netns/kanamecho/
ln -sf /etc/netns/honancho/hosts /etc/netns/kanamecho/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/kanamecho" ]; then
	mkdir "/etc/frr/kanamecho"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kanamecho/vtysh.conf
no service integrated-vtysh-config
hostname kanamecho
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kanamecho/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/kanamecho"

# start frr
/usr/lib/frr/frrinit.sh start "kanamecho"

# ospf setting
ip netns exec kanamecho vtysh -N kanamecho -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: higashiikebukuro
[ -d /etc/netns/higashiikebukuro ] || mkdir -p /etc/netns/higashiikebukuro/
ln -sf /etc/netns/honancho/hosts /etc/netns/higashiikebukuro/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/higashiikebukuro" ]; then
	mkdir "/etc/frr/higashiikebukuro"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/higashiikebukuro/vtysh.conf
no service integrated-vtysh-config
hostname higashiikebukuro
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/higashiikebukuro/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/higashiikebukuro"

# start frr
/usr/lib/frr/frrinit.sh start "higashiikebukuro"

# ospf setting
ip netns exec higashiikebukuro vtysh -N higashiikebukuro -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: gokokuji
[ -d /etc/netns/gokokuji ] || mkdir -p /etc/netns/gokokuji/
ln -sf /etc/netns/honancho/hosts /etc/netns/gokokuji/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/gokokuji" ]; then
	mkdir "/etc/frr/gokokuji"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/gokokuji/vtysh.conf
no service integrated-vtysh-config
hostname gokokuji
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/gokokuji/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/gokokuji"

# start frr
/usr/lib/frr/frrinit.sh start "gokokuji"

# ospf setting
ip netns exec gokokuji vtysh -N gokokuji -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: edogawabashi
[ -d /etc/netns/edogawabashi ] || mkdir -p /etc/netns/edogawabashi/
ln -sf /etc/netns/honancho/hosts /etc/netns/edogawabashi/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/edogawabashi" ]; then
	mkdir "/etc/frr/edogawabashi"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/edogawabashi/vtysh.conf
no service integrated-vtysh-config
hostname edogawabashi
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/edogawabashi/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/edogawabashi"

# start frr
/usr/lib/frr/frrinit.sh start "edogawabashi"

# ospf setting
ip netns exec edogawabashi vtysh -N edogawabashi -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: ichigaya
[ -d /etc/netns/ichigaya ] || mkdir -p /etc/netns/ichigaya/
ln -sf /etc/netns/honancho/hosts /etc/netns/ichigaya/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/ichigaya" ]; then
	mkdir "/etc/frr/ichigaya"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ichigaya/vtysh.conf
no service integrated-vtysh-config
hostname ichigaya
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ichigaya/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/ichigaya"

# start frr
/usr/lib/frr/frrinit.sh start "ichigaya"

# ospf setting
ip netns exec ichigaya vtysh -N ichigaya -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: kojimachi
[ -d /etc/netns/kojimachi ] || mkdir -p /etc/netns/kojimachi/
ln -sf /etc/netns/honancho/hosts /etc/netns/kojimachi/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/kojimachi" ]; then
	mkdir "/etc/frr/kojimachi"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kojimachi/vtysh.conf
no service integrated-vtysh-config
hostname kojimachi
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kojimachi/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/kojimachi"

# start frr
/usr/lib/frr/frrinit.sh start "kojimachi"

# ospf setting
ip netns exec kojimachi vtysh -N kojimachi -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: nagatacho
[ -d /etc/netns/nagatacho ] || mkdir -p /etc/netns/nagatacho/
ln -sf /etc/netns/honancho/hosts /etc/netns/nagatacho/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/nagatacho" ]; then
	mkdir "/etc/frr/nagatacho"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nagatacho/vtysh.conf
no service integrated-vtysh-config
hostname nagatacho
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nagatacho/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/nagatacho"

# start frr
/usr/lib/frr/frrinit.sh start "nagatacho"

# ospf setting
ip netns exec nagatacho vtysh -N nagatacho -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: sakuradamon
[ -d /etc/netns/sakuradamon ] || mkdir -p /etc/netns/sakuradamon/
ln -sf /etc/netns/honancho/hosts /etc/netns/sakuradamon/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/sakuradamon" ]; then
	mkdir "/etc/frr/sakuradamon"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/sakuradamon/vtysh.conf
no service integrated-vtysh-config
hostname sakuradamon
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/sakuradamon/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/sakuradamon"

# start frr
/usr/lib/frr/frrinit.sh start "sakuradamon"

# ospf setting
ip netns exec sakuradamon vtysh -N sakuradamon -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: yurakucho
[ -d /etc/netns/yurakucho ] || mkdir -p /etc/netns/yurakucho/
ln -sf /etc/netns/honancho/hosts /etc/netns/yurakucho/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/yurakucho" ]; then
	mkdir "/etc/frr/yurakucho"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/yurakucho/vtysh.conf
no service integrated-vtysh-config
hostname yurakucho
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/yurakucho/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/yurakucho"

# start frr
/usr/lib/frr/frrinit.sh start "yurakucho"

# ospf setting
ip netns exec yurakucho vtysh -N yurakucho -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: ginzaicchome
[ -d /etc/netns/ginzaicchome ] || mkdir -p /etc/netns/ginzaicchome/
ln -sf /etc/netns/honancho/hosts /etc/netns/ginzaicchome/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/ginzaicchome" ]; then
	mkdir "/etc/frr/ginzaicchome"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ginzaicchome/vtysh.conf
no service integrated-vtysh-config
hostname ginzaicchome
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ginzaicchome/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/ginzaicchome"

# start frr
/usr/lib/frr/frrinit.sh start "ginzaicchome"

# ospf setting
ip netns exec ginzaicchome vtysh -N ginzaicchome -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: shintomicho
[ -d /etc/netns/shintomicho ] || mkdir -p /etc/netns/shintomicho/
ln -sf /etc/netns/honancho/hosts /etc/netns/shintomicho/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/shintomicho" ]; then
	mkdir "/etc/frr/shintomicho"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shintomicho/vtysh.conf
no service integrated-vtysh-config
hostname shintomicho
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shintomicho/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/shintomicho"

# start frr
/usr/lib/frr/frrinit.sh start "shintomicho"

# ospf setting
ip netns exec shintomicho vtysh -N shintomicho -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: tsukishima
[ -d /etc/netns/tsukishima ] || mkdir -p /etc/netns/tsukishima/
ln -sf /etc/netns/honancho/hosts /etc/netns/tsukishima/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/tsukishima" ]; then
	mkdir "/etc/frr/tsukishima"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/tsukishima/vtysh.conf
no service integrated-vtysh-config
hostname tsukishima
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/tsukishima/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/tsukishima"

# start frr
/usr/lib/frr/frrinit.sh start "tsukishima"

# ospf setting
ip netns exec tsukishima vtysh -N tsukishima -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: toyosu
[ -d /etc/netns/toyosu ] || mkdir -p /etc/netns/toyosu/
ln -sf /etc/netns/honancho/hosts /etc/netns/toyosu/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/toyosu" ]; then
	mkdir "/etc/frr/toyosu"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/toyosu/vtysh.conf
no service integrated-vtysh-config
hostname toyosu
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/toyosu/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/toyosu"

# start frr
/usr/lib/frr/frrinit.sh start "toyosu"

# ospf setting
ip netns exec toyosu vtysh -N toyosu -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: tatsumi
[ -d /etc/netns/tatsumi ] || mkdir -p /etc/netns/tatsumi/
ln -sf /etc/netns/honancho/hosts /etc/netns/tatsumi/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/tatsumi" ]; then
	mkdir "/etc/frr/tatsumi"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/tatsumi/vtysh.conf
no service integrated-vtysh-config
hostname tatsumi
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/tatsumi/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/tatsumi"

# start frr
/usr/lib/frr/frrinit.sh start "tatsumi"

# ospf setting
ip netns exec tatsumi vtysh -N tatsumi -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: shinkiba
[ -d /etc/netns/shinkiba ] || mkdir -p /etc/netns/shinkiba/
ln -sf /etc/netns/honancho/hosts /etc/netns/shinkiba/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/shinkiba" ]; then
	mkdir "/etc/frr/shinkiba"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shinkiba/vtysh.conf
no service integrated-vtysh-config
hostname shinkiba
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shinkiba/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/shinkiba"

# start frr
/usr/lib/frr/frrinit.sh start "shinkiba"

# ospf setting
ip netns exec shinkiba vtysh -N shinkiba -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: hanzomon
[ -d /etc/netns/hanzomon ] || mkdir -p /etc/netns/hanzomon/
ln -sf /etc/netns/honancho/hosts /etc/netns/hanzomon/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/hanzomon" ]; then
	mkdir "/etc/frr/hanzomon"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/hanzomon/vtysh.conf
no service integrated-vtysh-config
hostname hanzomon
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/hanzomon/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/hanzomon"

# start frr
/usr/lib/frr/frrinit.sh start "hanzomon"

# ospf setting
ip netns exec hanzomon vtysh -N hanzomon -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: jimbocho
[ -d /etc/netns/jimbocho ] || mkdir -p /etc/netns/jimbocho/
ln -sf /etc/netns/honancho/hosts /etc/netns/jimbocho/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/jimbocho" ]; then
	mkdir "/etc/frr/jimbocho"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/jimbocho/vtysh.conf
no service integrated-vtysh-config
hostname jimbocho
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/jimbocho/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/jimbocho"

# start frr
/usr/lib/frr/frrinit.sh start "jimbocho"

# ospf setting
ip netns exec jimbocho vtysh -N jimbocho -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: suitengumae
[ -d /etc/netns/suitengumae ] || mkdir -p /etc/netns/suitengumae/
ln -sf /etc/netns/honancho/hosts /etc/netns/suitengumae/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/suitengumae" ]; then
	mkdir "/etc/frr/suitengumae"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/suitengumae/vtysh.conf
no service integrated-vtysh-config
hostname suitengumae
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/suitengumae/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/suitengumae"

# start frr
/usr/lib/frr/frrinit.sh start "suitengumae"

# ospf setting
ip netns exec suitengumae vtysh -N suitengumae -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: kiyosumishirakawa
[ -d /etc/netns/kiyosumishirakawa ] || mkdir -p /etc/netns/kiyosumishirakawa/
ln -sf /etc/netns/honancho/hosts /etc/netns/kiyosumishirakawa/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/kiyosumishirakawa" ]; then
	mkdir "/etc/frr/kiyosumishirakawa"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kiyosumishirakawa/vtysh.conf
no service integrated-vtysh-config
hostname kiyosumishirakawa
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kiyosumishirakawa/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/kiyosumishirakawa"

# start frr
/usr/lib/frr/frrinit.sh start "kiyosumishirakawa"

# ospf setting
ip netns exec kiyosumishirakawa vtysh -N kiyosumishirakawa -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: sumiyoshi
[ -d /etc/netns/sumiyoshi ] || mkdir -p /etc/netns/sumiyoshi/
ln -sf /etc/netns/honancho/hosts /etc/netns/sumiyoshi/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/sumiyoshi" ]; then
	mkdir "/etc/frr/sumiyoshi"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/sumiyoshi/vtysh.conf
no service integrated-vtysh-config
hostname sumiyoshi
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/sumiyoshi/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/sumiyoshi"

# start frr
/usr/lib/frr/frrinit.sh start "sumiyoshi"

# ospf setting
ip netns exec sumiyoshi vtysh -N sumiyoshi -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: kinshicho
[ -d /etc/netns/kinshicho ] || mkdir -p /etc/netns/kinshicho/
ln -sf /etc/netns/honancho/hosts /etc/netns/kinshicho/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/kinshicho" ]; then
	mkdir "/etc/frr/kinshicho"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kinshicho/vtysh.conf
no service integrated-vtysh-config
hostname kinshicho
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kinshicho/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/kinshicho"

# start frr
/usr/lib/frr/frrinit.sh start "kinshicho"

# ospf setting
ip netns exec kinshicho vtysh -N kinshicho -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: oshiage
[ -d /etc/netns/oshiage ] || mkdir -p /etc/netns/oshiage/
ln -sf /etc/netns/honancho/hosts /etc/netns/oshiage/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/oshiage" ]; then
	mkdir "/etc/frr/oshiage"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/oshiage/vtysh.conf
no service integrated-vtysh-config
hostname oshiage
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/oshiage/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/oshiage"

# start frr
/usr/lib/frr/frrinit.sh start "oshiage"

# ospf setting
ip netns exec oshiage vtysh -N oshiage -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: akabaneiwabuchi
[ -d /etc/netns/akabaneiwabuchi ] || mkdir -p /etc/netns/akabaneiwabuchi/
ln -sf /etc/netns/honancho/hosts /etc/netns/akabaneiwabuchi/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/akabaneiwabuchi" ]; then
	mkdir "/etc/frr/akabaneiwabuchi"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/akabaneiwabuchi/vtysh.conf
no service integrated-vtysh-config
hostname akabaneiwabuchi
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/akabaneiwabuchi/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/akabaneiwabuchi"

# start frr
/usr/lib/frr/frrinit.sh start "akabaneiwabuchi"

# ospf setting
ip netns exec akabaneiwabuchi vtysh -N akabaneiwabuchi -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: shimo
[ -d /etc/netns/shimo ] || mkdir -p /etc/netns/shimo/
ln -sf /etc/netns/honancho/hosts /etc/netns/shimo/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/shimo" ]; then
	mkdir "/etc/frr/shimo"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shimo/vtysh.conf
no service integrated-vtysh-config
hostname shimo
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shimo/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/shimo"

# start frr
/usr/lib/frr/frrinit.sh start "shimo"

# ospf setting
ip netns exec shimo vtysh -N shimo -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: ojikamiya
[ -d /etc/netns/ojikamiya ] || mkdir -p /etc/netns/ojikamiya/
ln -sf /etc/netns/honancho/hosts /etc/netns/ojikamiya/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/ojikamiya" ]; then
	mkdir "/etc/frr/ojikamiya"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ojikamiya/vtysh.conf
no service integrated-vtysh-config
hostname ojikamiya
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/ojikamiya/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/ojikamiya"

# start frr
/usr/lib/frr/frrinit.sh start "ojikamiya"

# ospf setting
ip netns exec ojikamiya vtysh -N ojikamiya -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: oji
[ -d /etc/netns/oji ] || mkdir -p /etc/netns/oji/
ln -sf /etc/netns/honancho/hosts /etc/netns/oji/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/oji" ]; then
	mkdir "/etc/frr/oji"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/oji/vtysh.conf
no service integrated-vtysh-config
hostname oji
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/oji/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/oji"

# start frr
/usr/lib/frr/frrinit.sh start "oji"

# ospf setting
ip netns exec oji vtysh -N oji -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: nishigahara
[ -d /etc/netns/nishigahara ] || mkdir -p /etc/netns/nishigahara/
ln -sf /etc/netns/honancho/hosts /etc/netns/nishigahara/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/nishigahara" ]; then
	mkdir "/etc/frr/nishigahara"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nishigahara/vtysh.conf
no service integrated-vtysh-config
hostname nishigahara
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nishigahara/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/nishigahara"

# start frr
/usr/lib/frr/frrinit.sh start "nishigahara"

# ospf setting
ip netns exec nishigahara vtysh -N nishigahara -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: komagome
[ -d /etc/netns/komagome ] || mkdir -p /etc/netns/komagome/
ln -sf /etc/netns/honancho/hosts /etc/netns/komagome/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/komagome" ]; then
	mkdir "/etc/frr/komagome"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/komagome/vtysh.conf
no service integrated-vtysh-config
hostname komagome
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/komagome/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/komagome"

# start frr
/usr/lib/frr/frrinit.sh start "komagome"

# ospf setting
ip netns exec komagome vtysh -N komagome -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: honkomagome
[ -d /etc/netns/honkomagome ] || mkdir -p /etc/netns/honkomagome/
ln -sf /etc/netns/honancho/hosts /etc/netns/honkomagome/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/honkomagome" ]; then
	mkdir "/etc/frr/honkomagome"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/honkomagome/vtysh.conf
no service integrated-vtysh-config
hostname honkomagome
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/honkomagome/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/honkomagome"

# start frr
/usr/lib/frr/frrinit.sh start "honkomagome"

# ospf setting
ip netns exec honkomagome vtysh -N honkomagome -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: todaimae
[ -d /etc/netns/todaimae ] || mkdir -p /etc/netns/todaimae/
ln -sf /etc/netns/honancho/hosts /etc/netns/todaimae/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/todaimae" ]; then
	mkdir "/etc/frr/todaimae"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/todaimae/vtysh.conf
no service integrated-vtysh-config
hostname todaimae
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/todaimae/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/todaimae"

# start frr
/usr/lib/frr/frrinit.sh start "todaimae"

# ospf setting
ip netns exec todaimae vtysh -N todaimae -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: roppongiicchome
[ -d /etc/netns/roppongiicchome ] || mkdir -p /etc/netns/roppongiicchome/
ln -sf /etc/netns/honancho/hosts /etc/netns/roppongiicchome/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/roppongiicchome" ]; then
	mkdir "/etc/frr/roppongiicchome"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/roppongiicchome/vtysh.conf
no service integrated-vtysh-config
hostname roppongiicchome
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/roppongiicchome/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/roppongiicchome"

# start frr
/usr/lib/frr/frrinit.sh start "roppongiicchome"

# ospf setting
ip netns exec roppongiicchome vtysh -N roppongiicchome -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: azabujuban
[ -d /etc/netns/azabujuban ] || mkdir -p /etc/netns/azabujuban/
ln -sf /etc/netns/honancho/hosts /etc/netns/azabujuban/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/azabujuban" ]; then
	mkdir "/etc/frr/azabujuban"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/azabujuban/vtysh.conf
no service integrated-vtysh-config
hostname azabujuban
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/azabujuban/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/azabujuban"

# start frr
/usr/lib/frr/frrinit.sh start "azabujuban"

# ospf setting
ip netns exec azabujuban vtysh -N azabujuban -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: shirakanetakanawa
[ -d /etc/netns/shirakanetakanawa ] || mkdir -p /etc/netns/shirakanetakanawa/
ln -sf /etc/netns/honancho/hosts /etc/netns/shirakanetakanawa/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/shirakanetakanawa" ]; then
	mkdir "/etc/frr/shirakanetakanawa"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shirakanetakanawa/vtysh.conf
no service integrated-vtysh-config
hostname shirakanetakanawa
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shirakanetakanawa/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/shirakanetakanawa"

# start frr
/usr/lib/frr/frrinit.sh start "shirakanetakanawa"

# ospf setting
ip netns exec shirakanetakanawa vtysh -N shirakanetakanawa -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: shiroganedai
[ -d /etc/netns/shiroganedai ] || mkdir -p /etc/netns/shiroganedai/
ln -sf /etc/netns/honancho/hosts /etc/netns/shiroganedai/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/shiroganedai" ]; then
	mkdir "/etc/frr/shiroganedai"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shiroganedai/vtysh.conf
no service integrated-vtysh-config
hostname shiroganedai
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/shiroganedai/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/shiroganedai"

# start frr
/usr/lib/frr/frrinit.sh start "shiroganedai"

# ospf setting
ip netns exec shiroganedai vtysh -N shiroganedai -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: meguro
[ -d /etc/netns/meguro ] || mkdir -p /etc/netns/meguro/
ln -sf /etc/netns/honancho/hosts /etc/netns/meguro/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/meguro" ]; then
	mkdir "/etc/frr/meguro"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/meguro/vtysh.conf
no service integrated-vtysh-config
hostname meguro
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/meguro/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/meguro"

# start frr
/usr/lib/frr/frrinit.sh start "meguro"

# ospf setting
ip netns exec meguro vtysh -N meguro -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: zoshigaya
[ -d /etc/netns/zoshigaya ] || mkdir -p /etc/netns/zoshigaya/
ln -sf /etc/netns/honancho/hosts /etc/netns/zoshigaya/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/zoshigaya" ]; then
	mkdir "/etc/frr/zoshigaya"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/zoshigaya/vtysh.conf
no service integrated-vtysh-config
hostname zoshigaya
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/zoshigaya/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/zoshigaya"

# start frr
/usr/lib/frr/frrinit.sh start "zoshigaya"

# ospf setting
ip netns exec zoshigaya vtysh -N zoshigaya -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: nishiwaseda
[ -d /etc/netns/nishiwaseda ] || mkdir -p /etc/netns/nishiwaseda/
ln -sf /etc/netns/honancho/hosts /etc/netns/nishiwaseda/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/nishiwaseda" ]; then
	mkdir "/etc/frr/nishiwaseda"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nishiwaseda/vtysh.conf
no service integrated-vtysh-config
hostname nishiwaseda
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/nishiwaseda/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/nishiwaseda"

# start frr
/usr/lib/frr/frrinit.sh start "nishiwaseda"

# ospf setting
ip netns exec nishiwaseda vtysh -N nishiwaseda -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: higashishinjuku
[ -d /etc/netns/higashishinjuku ] || mkdir -p /etc/netns/higashishinjuku/
ln -sf /etc/netns/honancho/hosts /etc/netns/higashishinjuku/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/higashishinjuku" ]; then
	mkdir "/etc/frr/higashishinjuku"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/higashishinjuku/vtysh.conf
no service integrated-vtysh-config
hostname higashishinjuku
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/higashishinjuku/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/higashishinjuku"

# start frr
/usr/lib/frr/frrinit.sh start "higashishinjuku"

# ospf setting
ip netns exec higashishinjuku vtysh -N higashishinjuku -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run post linkup commands: kitasando
[ -d /etc/netns/kitasando ] || mkdir -p /etc/netns/kitasando/
ln -sf /etc/netns/honancho/hosts /etc/netns/kitasando/hosts
# create frr config directory if not exists
if [ ! -d "/etc/frr/kitasando" ]; then
	mkdir "/etc/frr/kitasando"
fi

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kitasando/vtysh.conf
no service integrated-vtysh-config
hostname kitasando
__EOF__

# generate config file for network namespace
cat <<__EOF__ > /etc/frr/kitasando/daemons
# This file tells the frr package which daemons to start.
#
# Sample configurations for these daemons can be found in
# /usr/share/doc/frr/examples/.
#
# ATTENTION:
#
# When activating a daemon for the first time, a config file, even if it is
# empty, has to be present *and* be owned by the user and group "frr", else
# the daemon will not be started by /etc/init.d/frr. The permissions should
# be u=rw,g=r,o=.
# When using "vtysh" such a config file is also needed. It should be owned by
# group "frrvty" and set to ug=rw,o= though. Check /etc/pam.d/frr, too.
#
# The watchfrr, zebra and staticd daemons are always started.
#
bgpd=no
ospfd=yes
ospf6d=no
ripd=no
ripngd=no
isisd=no
pimd=no
ldpd=no
nhrpd=no
eigrpd=no
babeld=no
sharpd=no
pbrd=no
bfdd=no
fabricd=no
vrrpd=no
pathd=no

#
# If this option is set the /etc/init.d/frr script automatically loads
# the config via "vtysh -b" when the servers are started.
# Check /etc/pam.d/frr if you intend to use "vtysh"!
#
vtysh_enable=yes
zebra_options="  -A 127.0.0.1 -s 90000000"
bgpd_options="   -A 127.0.0.1"
ospfd_options="  -A 127.0.0.1"
ospf6d_options=" -A ::1"
ripd_options="   -A 127.0.0.1"
ripngd_options=" -A ::1"
isisd_options="  -A 127.0.0.1"
pimd_options="   -A 127.0.0.1"
ldpd_options="   -A 127.0.0.1"
nhrpd_options="  -A 127.0.0.1"
eigrpd_options=" -A 127.0.0.1"
babeld_options=" -A 127.0.0.1"
sharpd_options=" -A 127.0.0.1"
pbrd_options="   -A 127.0.0.1"
staticd_options="-A 127.0.0.1"
bfdd_options="   -A 127.0.0.1"
fabricd_options="-A 127.0.0.1"
vrrpd_options="  -A 127.0.0.1"
pathd_options="  -A 127.0.0.1"

# configuration profile
#
#frr_profile="traditional"
#frr_profile="datacenter"

#
# This is the maximum number of FD's that will be available.
# Upon startup this is read by the control files and ulimit
# is called.  Uncomment and use a reasonable value for your
# setup if you are expecting a large number of peers in
# say BGP.
#MAX_FDS=1024

# The list of daemons to watch is automatically generated by the init script.
#watchfrr_options=""

# To make watchfrr create/join the specified netns, use the following option:
watchfrr_options="--netns"
# This only has an effect in /etc/frr/<somename>/daemons, and you need to
# start FRR with "/usr/lib/frr/frrinit.sh start <somename>".

# for debugging purposes, you can specify a "wrap" command to start instead
# of starting the daemon directly, e.g. to use valgrind on ospfd:
#   ospfd_wrap="/usr/bin/valgrind"
# or you can use "all_wrap" for all daemons, e.g. to use perf record:
#   all_wrap="/usr/bin/perf record --call-graph -"
# the normal daemon command is added to this at the end.
__EOF__
  
chown -R frr.frr "/etc/frr/kitasando"

# start frr
/usr/lib/frr/frrinit.sh start "kitasando"

# ospf setting
ip netns exec kitasando vtysh -N kitasando -E <<__EOF__
conf t
router ospf
network 10.0.0.0/8 area 0
end
write
__EOF__

# run test
i=0
until ip netns exec ogikubo ping -D -c 3 nishifunabashi; do
  ip netns exec ogikubo vtysh -N ogikubo -c 'show ip route'
  if [ $i -gt 90 ]; then
    break
  fi
  sleep 3
  i=`expr $i + 3`
done
ip netns exec ogikubo traceroute -m 64 nishifunabashi

} 2>&1 | tee tokyometro_build.log
