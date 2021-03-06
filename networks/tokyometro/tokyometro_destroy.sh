#!/bin/sh -x
# stop frr
/usr/lib/frr/frrinit.sh stop "honancho"

# delete frr namespace files
if [ -d "/etc/frr/honancho" ]; then
	rm -r "/etc/frr/honancho"
fi
[ -d /etc/netns/honancho ] && rm -r /etc/netns/honancho/
# stop frr
/usr/lib/frr/frrinit.sh stop "nakanofujimicho"

# delete frr namespace files
if [ -d "/etc/frr/nakanofujimicho" ]; then
	rm -r "/etc/frr/nakanofujimicho"
fi
[ -d /etc/netns/nakanofujimicho ] && rm -r /etc/netns/nakanofujimicho/
# stop frr
/usr/lib/frr/frrinit.sh stop "nakanoshimbashi"

# delete frr namespace files
if [ -d "/etc/frr/nakanoshimbashi" ]; then
	rm -r "/etc/frr/nakanoshimbashi"
fi
[ -d /etc/netns/nakanoshimbashi ] && rm -r /etc/netns/nakanoshimbashi/
# stop frr
/usr/lib/frr/frrinit.sh stop "asakusa"

# delete frr namespace files
if [ -d "/etc/frr/asakusa" ]; then
	rm -r "/etc/frr/asakusa"
fi
[ -d /etc/netns/asakusa ] && rm -r /etc/netns/asakusa/
# stop frr
/usr/lib/frr/frrinit.sh stop "tawaramachi"

# delete frr namespace files
if [ -d "/etc/frr/tawaramachi" ]; then
	rm -r "/etc/frr/tawaramachi"
fi
[ -d /etc/netns/tawaramachi ] && rm -r /etc/netns/tawaramachi/
# stop frr
/usr/lib/frr/frrinit.sh stop "inaricho"

# delete frr namespace files
if [ -d "/etc/frr/inaricho" ]; then
	rm -r "/etc/frr/inaricho"
fi
[ -d /etc/netns/inaricho ] && rm -r /etc/netns/inaricho/
# stop frr
/usr/lib/frr/frrinit.sh stop "ueno"

# delete frr namespace files
if [ -d "/etc/frr/ueno" ]; then
	rm -r "/etc/frr/ueno"
fi
[ -d /etc/netns/ueno ] && rm -r /etc/netns/ueno/
# stop frr
/usr/lib/frr/frrinit.sh stop "uenohirokoji"

# delete frr namespace files
if [ -d "/etc/frr/uenohirokoji" ]; then
	rm -r "/etc/frr/uenohirokoji"
fi
[ -d /etc/netns/uenohirokoji ] && rm -r /etc/netns/uenohirokoji/
# stop frr
/usr/lib/frr/frrinit.sh stop "suehirocho"

# delete frr namespace files
if [ -d "/etc/frr/suehirocho" ]; then
	rm -r "/etc/frr/suehirocho"
fi
[ -d /etc/netns/suehirocho ] && rm -r /etc/netns/suehirocho/
# stop frr
/usr/lib/frr/frrinit.sh stop "kanda"

# delete frr namespace files
if [ -d "/etc/frr/kanda" ]; then
	rm -r "/etc/frr/kanda"
fi
[ -d /etc/netns/kanda ] && rm -r /etc/netns/kanda/
# stop frr
/usr/lib/frr/frrinit.sh stop "mitsukoshimae"

# delete frr namespace files
if [ -d "/etc/frr/mitsukoshimae" ]; then
	rm -r "/etc/frr/mitsukoshimae"
fi
[ -d /etc/netns/mitsukoshimae ] && rm -r /etc/netns/mitsukoshimae/
# stop frr
/usr/lib/frr/frrinit.sh stop "nihombashi"

# delete frr namespace files
if [ -d "/etc/frr/nihombashi" ]; then
	rm -r "/etc/frr/nihombashi"
fi
[ -d /etc/netns/nihombashi ] && rm -r /etc/netns/nihombashi/
# stop frr
/usr/lib/frr/frrinit.sh stop "kyobashi"

# delete frr namespace files
if [ -d "/etc/frr/kyobashi" ]; then
	rm -r "/etc/frr/kyobashi"
fi
[ -d /etc/netns/kyobashi ] && rm -r /etc/netns/kyobashi/
# stop frr
/usr/lib/frr/frrinit.sh stop "ginza"

# delete frr namespace files
if [ -d "/etc/frr/ginza" ]; then
	rm -r "/etc/frr/ginza"
fi
[ -d /etc/netns/ginza ] && rm -r /etc/netns/ginza/
# stop frr
/usr/lib/frr/frrinit.sh stop "shimbashi"

# delete frr namespace files
if [ -d "/etc/frr/shimbashi" ]; then
	rm -r "/etc/frr/shimbashi"
fi
[ -d /etc/netns/shimbashi ] && rm -r /etc/netns/shimbashi/
# stop frr
/usr/lib/frr/frrinit.sh stop "toranomon"

# delete frr namespace files
if [ -d "/etc/frr/toranomon" ]; then
	rm -r "/etc/frr/toranomon"
fi
[ -d /etc/netns/toranomon ] && rm -r /etc/netns/toranomon/
# stop frr
/usr/lib/frr/frrinit.sh stop "tameikesanno"

# delete frr namespace files
if [ -d "/etc/frr/tameikesanno" ]; then
	rm -r "/etc/frr/tameikesanno"
fi
[ -d /etc/netns/tameikesanno ] && rm -r /etc/netns/tameikesanno/
# stop frr
/usr/lib/frr/frrinit.sh stop "akasakamitsuke"

# delete frr namespace files
if [ -d "/etc/frr/akasakamitsuke" ]; then
	rm -r "/etc/frr/akasakamitsuke"
fi
[ -d /etc/netns/akasakamitsuke ] && rm -r /etc/netns/akasakamitsuke/
# stop frr
/usr/lib/frr/frrinit.sh stop "aoyamaicchome"

# delete frr namespace files
if [ -d "/etc/frr/aoyamaicchome" ]; then
	rm -r "/etc/frr/aoyamaicchome"
fi
[ -d /etc/netns/aoyamaicchome ] && rm -r /etc/netns/aoyamaicchome/
# stop frr
/usr/lib/frr/frrinit.sh stop "gaiemmae"

# delete frr namespace files
if [ -d "/etc/frr/gaiemmae" ]; then
	rm -r "/etc/frr/gaiemmae"
fi
[ -d /etc/netns/gaiemmae ] && rm -r /etc/netns/gaiemmae/
# stop frr
/usr/lib/frr/frrinit.sh stop "omotesando"

# delete frr namespace files
if [ -d "/etc/frr/omotesando" ]; then
	rm -r "/etc/frr/omotesando"
fi
[ -d /etc/netns/omotesando ] && rm -r /etc/netns/omotesando/
# stop frr
/usr/lib/frr/frrinit.sh stop "shibuya"

# delete frr namespace files
if [ -d "/etc/frr/shibuya" ]; then
	rm -r "/etc/frr/shibuya"
fi
[ -d /etc/netns/shibuya ] && rm -r /etc/netns/shibuya/
# stop frr
/usr/lib/frr/frrinit.sh stop "ogikubo"

# delete frr namespace files
if [ -d "/etc/frr/ogikubo" ]; then
	rm -r "/etc/frr/ogikubo"
fi
[ -d /etc/netns/ogikubo ] && rm -r /etc/netns/ogikubo/
# stop frr
/usr/lib/frr/frrinit.sh stop "minamiasagaya"

# delete frr namespace files
if [ -d "/etc/frr/minamiasagaya" ]; then
	rm -r "/etc/frr/minamiasagaya"
fi
[ -d /etc/netns/minamiasagaya ] && rm -r /etc/netns/minamiasagaya/
# stop frr
/usr/lib/frr/frrinit.sh stop "shinkoenji"

# delete frr namespace files
if [ -d "/etc/frr/shinkoenji" ]; then
	rm -r "/etc/frr/shinkoenji"
fi
[ -d /etc/netns/shinkoenji ] && rm -r /etc/netns/shinkoenji/
# stop frr
/usr/lib/frr/frrinit.sh stop "higashikoenji"

# delete frr namespace files
if [ -d "/etc/frr/higashikoenji" ]; then
	rm -r "/etc/frr/higashikoenji"
fi
[ -d /etc/netns/higashikoenji ] && rm -r /etc/netns/higashikoenji/
# stop frr
/usr/lib/frr/frrinit.sh stop "shinnakano"

# delete frr namespace files
if [ -d "/etc/frr/shinnakano" ]; then
	rm -r "/etc/frr/shinnakano"
fi
[ -d /etc/netns/shinnakano ] && rm -r /etc/netns/shinnakano/
# stop frr
/usr/lib/frr/frrinit.sh stop "nakanosakaue"

# delete frr namespace files
if [ -d "/etc/frr/nakanosakaue" ]; then
	rm -r "/etc/frr/nakanosakaue"
fi
[ -d /etc/netns/nakanosakaue ] && rm -r /etc/netns/nakanosakaue/
# stop frr
/usr/lib/frr/frrinit.sh stop "nishishinjuku"

# delete frr namespace files
if [ -d "/etc/frr/nishishinjuku" ]; then
	rm -r "/etc/frr/nishishinjuku"
fi
[ -d /etc/netns/nishishinjuku ] && rm -r /etc/netns/nishishinjuku/
# stop frr
/usr/lib/frr/frrinit.sh stop "shinjuku"

# delete frr namespace files
if [ -d "/etc/frr/shinjuku" ]; then
	rm -r "/etc/frr/shinjuku"
fi
[ -d /etc/netns/shinjuku ] && rm -r /etc/netns/shinjuku/
# stop frr
/usr/lib/frr/frrinit.sh stop "shinjukusanchome"

# delete frr namespace files
if [ -d "/etc/frr/shinjukusanchome" ]; then
	rm -r "/etc/frr/shinjukusanchome"
fi
[ -d /etc/netns/shinjukusanchome ] && rm -r /etc/netns/shinjukusanchome/
# stop frr
/usr/lib/frr/frrinit.sh stop "shinjukugyoemmae"

# delete frr namespace files
if [ -d "/etc/frr/shinjukugyoemmae" ]; then
	rm -r "/etc/frr/shinjukugyoemmae"
fi
[ -d /etc/netns/shinjukugyoemmae ] && rm -r /etc/netns/shinjukugyoemmae/
# stop frr
/usr/lib/frr/frrinit.sh stop "yotsuyasanchome"

# delete frr namespace files
if [ -d "/etc/frr/yotsuyasanchome" ]; then
	rm -r "/etc/frr/yotsuyasanchome"
fi
[ -d /etc/netns/yotsuyasanchome ] && rm -r /etc/netns/yotsuyasanchome/
# stop frr
/usr/lib/frr/frrinit.sh stop "yotsuya"

# delete frr namespace files
if [ -d "/etc/frr/yotsuya" ]; then
	rm -r "/etc/frr/yotsuya"
fi
[ -d /etc/netns/yotsuya ] && rm -r /etc/netns/yotsuya/
# stop frr
/usr/lib/frr/frrinit.sh stop "kokkaigijidomae"

# delete frr namespace files
if [ -d "/etc/frr/kokkaigijidomae" ]; then
	rm -r "/etc/frr/kokkaigijidomae"
fi
[ -d /etc/netns/kokkaigijidomae ] && rm -r /etc/netns/kokkaigijidomae/
# stop frr
/usr/lib/frr/frrinit.sh stop "kasumigaseki"

# delete frr namespace files
if [ -d "/etc/frr/kasumigaseki" ]; then
	rm -r "/etc/frr/kasumigaseki"
fi
[ -d /etc/netns/kasumigaseki ] && rm -r /etc/netns/kasumigaseki/
# stop frr
/usr/lib/frr/frrinit.sh stop "tokyo"

# delete frr namespace files
if [ -d "/etc/frr/tokyo" ]; then
	rm -r "/etc/frr/tokyo"
fi
[ -d /etc/netns/tokyo ] && rm -r /etc/netns/tokyo/
# stop frr
/usr/lib/frr/frrinit.sh stop "otemachi"

# delete frr namespace files
if [ -d "/etc/frr/otemachi" ]; then
	rm -r "/etc/frr/otemachi"
fi
[ -d /etc/netns/otemachi ] && rm -r /etc/netns/otemachi/
# stop frr
/usr/lib/frr/frrinit.sh stop "awajicho"

# delete frr namespace files
if [ -d "/etc/frr/awajicho" ]; then
	rm -r "/etc/frr/awajicho"
fi
[ -d /etc/netns/awajicho ] && rm -r /etc/netns/awajicho/
# stop frr
/usr/lib/frr/frrinit.sh stop "ochanomizu"

# delete frr namespace files
if [ -d "/etc/frr/ochanomizu" ]; then
	rm -r "/etc/frr/ochanomizu"
fi
[ -d /etc/netns/ochanomizu ] && rm -r /etc/netns/ochanomizu/
# stop frr
/usr/lib/frr/frrinit.sh stop "hongosanchome"

# delete frr namespace files
if [ -d "/etc/frr/hongosanchome" ]; then
	rm -r "/etc/frr/hongosanchome"
fi
[ -d /etc/netns/hongosanchome ] && rm -r /etc/netns/hongosanchome/
# stop frr
/usr/lib/frr/frrinit.sh stop "korakuen"

# delete frr namespace files
if [ -d "/etc/frr/korakuen" ]; then
	rm -r "/etc/frr/korakuen"
fi
[ -d /etc/netns/korakuen ] && rm -r /etc/netns/korakuen/
# stop frr
/usr/lib/frr/frrinit.sh stop "myogadani"

# delete frr namespace files
if [ -d "/etc/frr/myogadani" ]; then
	rm -r "/etc/frr/myogadani"
fi
[ -d /etc/netns/myogadani ] && rm -r /etc/netns/myogadani/
# stop frr
/usr/lib/frr/frrinit.sh stop "shinotsuka"

# delete frr namespace files
if [ -d "/etc/frr/shinotsuka" ]; then
	rm -r "/etc/frr/shinotsuka"
fi
[ -d /etc/netns/shinotsuka ] && rm -r /etc/netns/shinotsuka/
# stop frr
/usr/lib/frr/frrinit.sh stop "ikebukuro"

# delete frr namespace files
if [ -d "/etc/frr/ikebukuro" ]; then
	rm -r "/etc/frr/ikebukuro"
fi
[ -d /etc/netns/ikebukuro ] && rm -r /etc/netns/ikebukuro/
# stop frr
/usr/lib/frr/frrinit.sh stop "kitasenju"

# delete frr namespace files
if [ -d "/etc/frr/kitasenju" ]; then
	rm -r "/etc/frr/kitasenju"
fi
[ -d /etc/netns/kitasenju ] && rm -r /etc/netns/kitasenju/
# stop frr
/usr/lib/frr/frrinit.sh stop "minamisenju"

# delete frr namespace files
if [ -d "/etc/frr/minamisenju" ]; then
	rm -r "/etc/frr/minamisenju"
fi
[ -d /etc/netns/minamisenju ] && rm -r /etc/netns/minamisenju/
# stop frr
/usr/lib/frr/frrinit.sh stop "minowa"

# delete frr namespace files
if [ -d "/etc/frr/minowa" ]; then
	rm -r "/etc/frr/minowa"
fi
[ -d /etc/netns/minowa ] && rm -r /etc/netns/minowa/
# stop frr
/usr/lib/frr/frrinit.sh stop "iriya"

# delete frr namespace files
if [ -d "/etc/frr/iriya" ]; then
	rm -r "/etc/frr/iriya"
fi
[ -d /etc/netns/iriya ] && rm -r /etc/netns/iriya/
# stop frr
/usr/lib/frr/frrinit.sh stop "nakaokachimachi"

# delete frr namespace files
if [ -d "/etc/frr/nakaokachimachi" ]; then
	rm -r "/etc/frr/nakaokachimachi"
fi
[ -d /etc/netns/nakaokachimachi ] && rm -r /etc/netns/nakaokachimachi/
# stop frr
/usr/lib/frr/frrinit.sh stop "akihabara"

# delete frr namespace files
if [ -d "/etc/frr/akihabara" ]; then
	rm -r "/etc/frr/akihabara"
fi
[ -d /etc/netns/akihabara ] && rm -r /etc/netns/akihabara/
# stop frr
/usr/lib/frr/frrinit.sh stop "kodemmacho"

# delete frr namespace files
if [ -d "/etc/frr/kodemmacho" ]; then
	rm -r "/etc/frr/kodemmacho"
fi
[ -d /etc/netns/kodemmacho ] && rm -r /etc/netns/kodemmacho/
# stop frr
/usr/lib/frr/frrinit.sh stop "ningyocho"

# delete frr namespace files
if [ -d "/etc/frr/ningyocho" ]; then
	rm -r "/etc/frr/ningyocho"
fi
[ -d /etc/netns/ningyocho ] && rm -r /etc/netns/ningyocho/
# stop frr
/usr/lib/frr/frrinit.sh stop "kayabacho"

# delete frr namespace files
if [ -d "/etc/frr/kayabacho" ]; then
	rm -r "/etc/frr/kayabacho"
fi
[ -d /etc/netns/kayabacho ] && rm -r /etc/netns/kayabacho/
# stop frr
/usr/lib/frr/frrinit.sh stop "hatchobori"

# delete frr namespace files
if [ -d "/etc/frr/hatchobori" ]; then
	rm -r "/etc/frr/hatchobori"
fi
[ -d /etc/netns/hatchobori ] && rm -r /etc/netns/hatchobori/
# stop frr
/usr/lib/frr/frrinit.sh stop "tsukiji"

# delete frr namespace files
if [ -d "/etc/frr/tsukiji" ]; then
	rm -r "/etc/frr/tsukiji"
fi
[ -d /etc/netns/tsukiji ] && rm -r /etc/netns/tsukiji/
# stop frr
/usr/lib/frr/frrinit.sh stop "higashiginza"

# delete frr namespace files
if [ -d "/etc/frr/higashiginza" ]; then
	rm -r "/etc/frr/higashiginza"
fi
[ -d /etc/netns/higashiginza ] && rm -r /etc/netns/higashiginza/
# stop frr
/usr/lib/frr/frrinit.sh stop "hibiya"

# delete frr namespace files
if [ -d "/etc/frr/hibiya" ]; then
	rm -r "/etc/frr/hibiya"
fi
[ -d /etc/netns/hibiya ] && rm -r /etc/netns/hibiya/
# stop frr
/usr/lib/frr/frrinit.sh stop "toranomonhiruzu"

# delete frr namespace files
if [ -d "/etc/frr/toranomonhiruzu" ]; then
	rm -r "/etc/frr/toranomonhiruzu"
fi
[ -d /etc/netns/toranomonhiruzu ] && rm -r /etc/netns/toranomonhiruzu/
# stop frr
/usr/lib/frr/frrinit.sh stop "kamiyacho"

# delete frr namespace files
if [ -d "/etc/frr/kamiyacho" ]; then
	rm -r "/etc/frr/kamiyacho"
fi
[ -d /etc/netns/kamiyacho ] && rm -r /etc/netns/kamiyacho/
# stop frr
/usr/lib/frr/frrinit.sh stop "roppongi"

# delete frr namespace files
if [ -d "/etc/frr/roppongi" ]; then
	rm -r "/etc/frr/roppongi"
fi
[ -d /etc/netns/roppongi ] && rm -r /etc/netns/roppongi/
# stop frr
/usr/lib/frr/frrinit.sh stop "hiroo"

# delete frr namespace files
if [ -d "/etc/frr/hiroo" ]; then
	rm -r "/etc/frr/hiroo"
fi
[ -d /etc/netns/hiroo ] && rm -r /etc/netns/hiroo/
# stop frr
/usr/lib/frr/frrinit.sh stop "ebisu"

# delete frr namespace files
if [ -d "/etc/frr/ebisu" ]; then
	rm -r "/etc/frr/ebisu"
fi
[ -d /etc/netns/ebisu ] && rm -r /etc/netns/ebisu/
# stop frr
/usr/lib/frr/frrinit.sh stop "nakameguro"

# delete frr namespace files
if [ -d "/etc/frr/nakameguro" ]; then
	rm -r "/etc/frr/nakameguro"
fi
[ -d /etc/netns/nakameguro ] && rm -r /etc/netns/nakameguro/
# stop frr
/usr/lib/frr/frrinit.sh stop "nakano"

# delete frr namespace files
if [ -d "/etc/frr/nakano" ]; then
	rm -r "/etc/frr/nakano"
fi
[ -d /etc/netns/nakano ] && rm -r /etc/netns/nakano/
# stop frr
/usr/lib/frr/frrinit.sh stop "ochiai"

# delete frr namespace files
if [ -d "/etc/frr/ochiai" ]; then
	rm -r "/etc/frr/ochiai"
fi
[ -d /etc/netns/ochiai ] && rm -r /etc/netns/ochiai/
# stop frr
/usr/lib/frr/frrinit.sh stop "takadanobaba"

# delete frr namespace files
if [ -d "/etc/frr/takadanobaba" ]; then
	rm -r "/etc/frr/takadanobaba"
fi
[ -d /etc/netns/takadanobaba ] && rm -r /etc/netns/takadanobaba/
# stop frr
/usr/lib/frr/frrinit.sh stop "waseda"

# delete frr namespace files
if [ -d "/etc/frr/waseda" ]; then
	rm -r "/etc/frr/waseda"
fi
[ -d /etc/netns/waseda ] && rm -r /etc/netns/waseda/
# stop frr
/usr/lib/frr/frrinit.sh stop "kagurazaka"

# delete frr namespace files
if [ -d "/etc/frr/kagurazaka" ]; then
	rm -r "/etc/frr/kagurazaka"
fi
[ -d /etc/netns/kagurazaka ] && rm -r /etc/netns/kagurazaka/
# stop frr
/usr/lib/frr/frrinit.sh stop "iidabashi"

# delete frr namespace files
if [ -d "/etc/frr/iidabashi" ]; then
	rm -r "/etc/frr/iidabashi"
fi
[ -d /etc/netns/iidabashi ] && rm -r /etc/netns/iidabashi/
# stop frr
/usr/lib/frr/frrinit.sh stop "kudanshita"

# delete frr namespace files
if [ -d "/etc/frr/kudanshita" ]; then
	rm -r "/etc/frr/kudanshita"
fi
[ -d /etc/netns/kudanshita ] && rm -r /etc/netns/kudanshita/
# stop frr
/usr/lib/frr/frrinit.sh stop "takebashi"

# delete frr namespace files
if [ -d "/etc/frr/takebashi" ]; then
	rm -r "/etc/frr/takebashi"
fi
[ -d /etc/netns/takebashi ] && rm -r /etc/netns/takebashi/
# stop frr
/usr/lib/frr/frrinit.sh stop "monzennakacho"

# delete frr namespace files
if [ -d "/etc/frr/monzennakacho" ]; then
	rm -r "/etc/frr/monzennakacho"
fi
[ -d /etc/netns/monzennakacho ] && rm -r /etc/netns/monzennakacho/
# stop frr
/usr/lib/frr/frrinit.sh stop "kiba"

# delete frr namespace files
if [ -d "/etc/frr/kiba" ]; then
	rm -r "/etc/frr/kiba"
fi
[ -d /etc/netns/kiba ] && rm -r /etc/netns/kiba/
# stop frr
/usr/lib/frr/frrinit.sh stop "toyocho"

# delete frr namespace files
if [ -d "/etc/frr/toyocho" ]; then
	rm -r "/etc/frr/toyocho"
fi
[ -d /etc/netns/toyocho ] && rm -r /etc/netns/toyocho/
# stop frr
/usr/lib/frr/frrinit.sh stop "minamisunamachi"

# delete frr namespace files
if [ -d "/etc/frr/minamisunamachi" ]; then
	rm -r "/etc/frr/minamisunamachi"
fi
[ -d /etc/netns/minamisunamachi ] && rm -r /etc/netns/minamisunamachi/
# stop frr
/usr/lib/frr/frrinit.sh stop "nishikasai"

# delete frr namespace files
if [ -d "/etc/frr/nishikasai" ]; then
	rm -r "/etc/frr/nishikasai"
fi
[ -d /etc/netns/nishikasai ] && rm -r /etc/netns/nishikasai/
# stop frr
/usr/lib/frr/frrinit.sh stop "kasai"

# delete frr namespace files
if [ -d "/etc/frr/kasai" ]; then
	rm -r "/etc/frr/kasai"
fi
[ -d /etc/netns/kasai ] && rm -r /etc/netns/kasai/
# stop frr
/usr/lib/frr/frrinit.sh stop "urayasu"

# delete frr namespace files
if [ -d "/etc/frr/urayasu" ]; then
	rm -r "/etc/frr/urayasu"
fi
[ -d /etc/netns/urayasu ] && rm -r /etc/netns/urayasu/
# stop frr
/usr/lib/frr/frrinit.sh stop "minamigyotoku"

# delete frr namespace files
if [ -d "/etc/frr/minamigyotoku" ]; then
	rm -r "/etc/frr/minamigyotoku"
fi
[ -d /etc/netns/minamigyotoku ] && rm -r /etc/netns/minamigyotoku/
# stop frr
/usr/lib/frr/frrinit.sh stop "gyotoku"

# delete frr namespace files
if [ -d "/etc/frr/gyotoku" ]; then
	rm -r "/etc/frr/gyotoku"
fi
[ -d /etc/netns/gyotoku ] && rm -r /etc/netns/gyotoku/
# stop frr
/usr/lib/frr/frrinit.sh stop "myoden"

# delete frr namespace files
if [ -d "/etc/frr/myoden" ]; then
	rm -r "/etc/frr/myoden"
fi
[ -d /etc/netns/myoden ] && rm -r /etc/netns/myoden/
# stop frr
/usr/lib/frr/frrinit.sh stop "barakinakayama"

# delete frr namespace files
if [ -d "/etc/frr/barakinakayama" ]; then
	rm -r "/etc/frr/barakinakayama"
fi
[ -d /etc/netns/barakinakayama ] && rm -r /etc/netns/barakinakayama/
# stop frr
/usr/lib/frr/frrinit.sh stop "nishifunabashi"

# delete frr namespace files
if [ -d "/etc/frr/nishifunabashi" ]; then
	rm -r "/etc/frr/nishifunabashi"
fi
[ -d /etc/netns/nishifunabashi ] && rm -r /etc/netns/nishifunabashi/
# stop frr
/usr/lib/frr/frrinit.sh stop "kitaayase"

# delete frr namespace files
if [ -d "/etc/frr/kitaayase" ]; then
	rm -r "/etc/frr/kitaayase"
fi
[ -d /etc/netns/kitaayase ] && rm -r /etc/netns/kitaayase/
# stop frr
/usr/lib/frr/frrinit.sh stop "ayase"

# delete frr namespace files
if [ -d "/etc/frr/ayase" ]; then
	rm -r "/etc/frr/ayase"
fi
[ -d /etc/netns/ayase ] && rm -r /etc/netns/ayase/
# stop frr
/usr/lib/frr/frrinit.sh stop "machiya"

# delete frr namespace files
if [ -d "/etc/frr/machiya" ]; then
	rm -r "/etc/frr/machiya"
fi
[ -d /etc/netns/machiya ] && rm -r /etc/netns/machiya/
# stop frr
/usr/lib/frr/frrinit.sh stop "nishinippori"

# delete frr namespace files
if [ -d "/etc/frr/nishinippori" ]; then
	rm -r "/etc/frr/nishinippori"
fi
[ -d /etc/netns/nishinippori ] && rm -r /etc/netns/nishinippori/
# stop frr
/usr/lib/frr/frrinit.sh stop "sendagi"

# delete frr namespace files
if [ -d "/etc/frr/sendagi" ]; then
	rm -r "/etc/frr/sendagi"
fi
[ -d /etc/netns/sendagi ] && rm -r /etc/netns/sendagi/
# stop frr
/usr/lib/frr/frrinit.sh stop "nezu"

# delete frr namespace files
if [ -d "/etc/frr/nezu" ]; then
	rm -r "/etc/frr/nezu"
fi
[ -d /etc/netns/nezu ] && rm -r /etc/netns/nezu/
# stop frr
/usr/lib/frr/frrinit.sh stop "yushima"

# delete frr namespace files
if [ -d "/etc/frr/yushima" ]; then
	rm -r "/etc/frr/yushima"
fi
[ -d /etc/netns/yushima ] && rm -r /etc/netns/yushima/
# stop frr
/usr/lib/frr/frrinit.sh stop "shinochanomizu"

# delete frr namespace files
if [ -d "/etc/frr/shinochanomizu" ]; then
	rm -r "/etc/frr/shinochanomizu"
fi
[ -d /etc/netns/shinochanomizu ] && rm -r /etc/netns/shinochanomizu/
# stop frr
/usr/lib/frr/frrinit.sh stop "nijubashimae"

# delete frr namespace files
if [ -d "/etc/frr/nijubashimae" ]; then
	rm -r "/etc/frr/nijubashimae"
fi
[ -d /etc/netns/nijubashimae ] && rm -r /etc/netns/nijubashimae/
# stop frr
/usr/lib/frr/frrinit.sh stop "akasaka"

# delete frr namespace files
if [ -d "/etc/frr/akasaka" ]; then
	rm -r "/etc/frr/akasaka"
fi
[ -d /etc/netns/akasaka ] && rm -r /etc/netns/akasaka/
# stop frr
/usr/lib/frr/frrinit.sh stop "nogizaka"

# delete frr namespace files
if [ -d "/etc/frr/nogizaka" ]; then
	rm -r "/etc/frr/nogizaka"
fi
[ -d /etc/netns/nogizaka ] && rm -r /etc/netns/nogizaka/
# stop frr
/usr/lib/frr/frrinit.sh stop "meijijingumae"

# delete frr namespace files
if [ -d "/etc/frr/meijijingumae" ]; then
	rm -r "/etc/frr/meijijingumae"
fi
[ -d /etc/netns/meijijingumae ] && rm -r /etc/netns/meijijingumae/
# stop frr
/usr/lib/frr/frrinit.sh stop "yoyogikoen"

# delete frr namespace files
if [ -d "/etc/frr/yoyogikoen" ]; then
	rm -r "/etc/frr/yoyogikoen"
fi
[ -d /etc/netns/yoyogikoen ] && rm -r /etc/netns/yoyogikoen/
# stop frr
/usr/lib/frr/frrinit.sh stop "yoyogiuehara"

# delete frr namespace files
if [ -d "/etc/frr/yoyogiuehara" ]; then
	rm -r "/etc/frr/yoyogiuehara"
fi
[ -d /etc/netns/yoyogiuehara ] && rm -r /etc/netns/yoyogiuehara/
# stop frr
/usr/lib/frr/frrinit.sh stop "wakoshi"

# delete frr namespace files
if [ -d "/etc/frr/wakoshi" ]; then
	rm -r "/etc/frr/wakoshi"
fi
[ -d /etc/netns/wakoshi ] && rm -r /etc/netns/wakoshi/
# stop frr
/usr/lib/frr/frrinit.sh stop "chikatetsunarimasu"

# delete frr namespace files
if [ -d "/etc/frr/chikatetsunarimasu" ]; then
	rm -r "/etc/frr/chikatetsunarimasu"
fi
[ -d /etc/netns/chikatetsunarimasu ] && rm -r /etc/netns/chikatetsunarimasu/
# stop frr
/usr/lib/frr/frrinit.sh stop "chikatetsuakatsuka"

# delete frr namespace files
if [ -d "/etc/frr/chikatetsuakatsuka" ]; then
	rm -r "/etc/frr/chikatetsuakatsuka"
fi
[ -d /etc/netns/chikatetsuakatsuka ] && rm -r /etc/netns/chikatetsuakatsuka/
# stop frr
/usr/lib/frr/frrinit.sh stop "heiwadai"

# delete frr namespace files
if [ -d "/etc/frr/heiwadai" ]; then
	rm -r "/etc/frr/heiwadai"
fi
[ -d /etc/netns/heiwadai ] && rm -r /etc/netns/heiwadai/
# stop frr
/usr/lib/frr/frrinit.sh stop "hikawadai"

# delete frr namespace files
if [ -d "/etc/frr/hikawadai" ]; then
	rm -r "/etc/frr/hikawadai"
fi
[ -d /etc/netns/hikawadai ] && rm -r /etc/netns/hikawadai/
# stop frr
/usr/lib/frr/frrinit.sh stop "kotakemukaihara"

# delete frr namespace files
if [ -d "/etc/frr/kotakemukaihara" ]; then
	rm -r "/etc/frr/kotakemukaihara"
fi
[ -d /etc/netns/kotakemukaihara ] && rm -r /etc/netns/kotakemukaihara/
# stop frr
/usr/lib/frr/frrinit.sh stop "senkawa"

# delete frr namespace files
if [ -d "/etc/frr/senkawa" ]; then
	rm -r "/etc/frr/senkawa"
fi
[ -d /etc/netns/senkawa ] && rm -r /etc/netns/senkawa/
# stop frr
/usr/lib/frr/frrinit.sh stop "kanamecho"

# delete frr namespace files
if [ -d "/etc/frr/kanamecho" ]; then
	rm -r "/etc/frr/kanamecho"
fi
[ -d /etc/netns/kanamecho ] && rm -r /etc/netns/kanamecho/
# stop frr
/usr/lib/frr/frrinit.sh stop "higashiikebukuro"

# delete frr namespace files
if [ -d "/etc/frr/higashiikebukuro" ]; then
	rm -r "/etc/frr/higashiikebukuro"
fi
[ -d /etc/netns/higashiikebukuro ] && rm -r /etc/netns/higashiikebukuro/
# stop frr
/usr/lib/frr/frrinit.sh stop "gokokuji"

# delete frr namespace files
if [ -d "/etc/frr/gokokuji" ]; then
	rm -r "/etc/frr/gokokuji"
fi
[ -d /etc/netns/gokokuji ] && rm -r /etc/netns/gokokuji/
# stop frr
/usr/lib/frr/frrinit.sh stop "edogawabashi"

# delete frr namespace files
if [ -d "/etc/frr/edogawabashi" ]; then
	rm -r "/etc/frr/edogawabashi"
fi
[ -d /etc/netns/edogawabashi ] && rm -r /etc/netns/edogawabashi/
# stop frr
/usr/lib/frr/frrinit.sh stop "ichigaya"

# delete frr namespace files
if [ -d "/etc/frr/ichigaya" ]; then
	rm -r "/etc/frr/ichigaya"
fi
[ -d /etc/netns/ichigaya ] && rm -r /etc/netns/ichigaya/
# stop frr
/usr/lib/frr/frrinit.sh stop "kojimachi"

# delete frr namespace files
if [ -d "/etc/frr/kojimachi" ]; then
	rm -r "/etc/frr/kojimachi"
fi
[ -d /etc/netns/kojimachi ] && rm -r /etc/netns/kojimachi/
# stop frr
/usr/lib/frr/frrinit.sh stop "nagatacho"

# delete frr namespace files
if [ -d "/etc/frr/nagatacho" ]; then
	rm -r "/etc/frr/nagatacho"
fi
[ -d /etc/netns/nagatacho ] && rm -r /etc/netns/nagatacho/
# stop frr
/usr/lib/frr/frrinit.sh stop "sakuradamon"

# delete frr namespace files
if [ -d "/etc/frr/sakuradamon" ]; then
	rm -r "/etc/frr/sakuradamon"
fi
[ -d /etc/netns/sakuradamon ] && rm -r /etc/netns/sakuradamon/
# stop frr
/usr/lib/frr/frrinit.sh stop "yurakucho"

# delete frr namespace files
if [ -d "/etc/frr/yurakucho" ]; then
	rm -r "/etc/frr/yurakucho"
fi
[ -d /etc/netns/yurakucho ] && rm -r /etc/netns/yurakucho/
# stop frr
/usr/lib/frr/frrinit.sh stop "ginzaicchome"

# delete frr namespace files
if [ -d "/etc/frr/ginzaicchome" ]; then
	rm -r "/etc/frr/ginzaicchome"
fi
[ -d /etc/netns/ginzaicchome ] && rm -r /etc/netns/ginzaicchome/
# stop frr
/usr/lib/frr/frrinit.sh stop "shintomicho"

# delete frr namespace files
if [ -d "/etc/frr/shintomicho" ]; then
	rm -r "/etc/frr/shintomicho"
fi
[ -d /etc/netns/shintomicho ] && rm -r /etc/netns/shintomicho/
# stop frr
/usr/lib/frr/frrinit.sh stop "tsukishima"

# delete frr namespace files
if [ -d "/etc/frr/tsukishima" ]; then
	rm -r "/etc/frr/tsukishima"
fi
[ -d /etc/netns/tsukishima ] && rm -r /etc/netns/tsukishima/
# stop frr
/usr/lib/frr/frrinit.sh stop "toyosu"

# delete frr namespace files
if [ -d "/etc/frr/toyosu" ]; then
	rm -r "/etc/frr/toyosu"
fi
[ -d /etc/netns/toyosu ] && rm -r /etc/netns/toyosu/
# stop frr
/usr/lib/frr/frrinit.sh stop "tatsumi"

# delete frr namespace files
if [ -d "/etc/frr/tatsumi" ]; then
	rm -r "/etc/frr/tatsumi"
fi
[ -d /etc/netns/tatsumi ] && rm -r /etc/netns/tatsumi/
# stop frr
/usr/lib/frr/frrinit.sh stop "shinkiba"

# delete frr namespace files
if [ -d "/etc/frr/shinkiba" ]; then
	rm -r "/etc/frr/shinkiba"
fi
[ -d /etc/netns/shinkiba ] && rm -r /etc/netns/shinkiba/
# stop frr
/usr/lib/frr/frrinit.sh stop "hanzomon"

# delete frr namespace files
if [ -d "/etc/frr/hanzomon" ]; then
	rm -r "/etc/frr/hanzomon"
fi
[ -d /etc/netns/hanzomon ] && rm -r /etc/netns/hanzomon/
# stop frr
/usr/lib/frr/frrinit.sh stop "jimbocho"

# delete frr namespace files
if [ -d "/etc/frr/jimbocho" ]; then
	rm -r "/etc/frr/jimbocho"
fi
[ -d /etc/netns/jimbocho ] && rm -r /etc/netns/jimbocho/
# stop frr
/usr/lib/frr/frrinit.sh stop "suitengumae"

# delete frr namespace files
if [ -d "/etc/frr/suitengumae" ]; then
	rm -r "/etc/frr/suitengumae"
fi
[ -d /etc/netns/suitengumae ] && rm -r /etc/netns/suitengumae/
# stop frr
/usr/lib/frr/frrinit.sh stop "kiyosumishirakawa"

# delete frr namespace files
if [ -d "/etc/frr/kiyosumishirakawa" ]; then
	rm -r "/etc/frr/kiyosumishirakawa"
fi
[ -d /etc/netns/kiyosumishirakawa ] && rm -r /etc/netns/kiyosumishirakawa/
# stop frr
/usr/lib/frr/frrinit.sh stop "sumiyoshi"

# delete frr namespace files
if [ -d "/etc/frr/sumiyoshi" ]; then
	rm -r "/etc/frr/sumiyoshi"
fi
[ -d /etc/netns/sumiyoshi ] && rm -r /etc/netns/sumiyoshi/
# stop frr
/usr/lib/frr/frrinit.sh stop "kinshicho"

# delete frr namespace files
if [ -d "/etc/frr/kinshicho" ]; then
	rm -r "/etc/frr/kinshicho"
fi
[ -d /etc/netns/kinshicho ] && rm -r /etc/netns/kinshicho/
# stop frr
/usr/lib/frr/frrinit.sh stop "oshiage"

# delete frr namespace files
if [ -d "/etc/frr/oshiage" ]; then
	rm -r "/etc/frr/oshiage"
fi
[ -d /etc/netns/oshiage ] && rm -r /etc/netns/oshiage/
# stop frr
/usr/lib/frr/frrinit.sh stop "akabaneiwabuchi"

# delete frr namespace files
if [ -d "/etc/frr/akabaneiwabuchi" ]; then
	rm -r "/etc/frr/akabaneiwabuchi"
fi
[ -d /etc/netns/akabaneiwabuchi ] && rm -r /etc/netns/akabaneiwabuchi/
# stop frr
/usr/lib/frr/frrinit.sh stop "shimo"

# delete frr namespace files
if [ -d "/etc/frr/shimo" ]; then
	rm -r "/etc/frr/shimo"
fi
[ -d /etc/netns/shimo ] && rm -r /etc/netns/shimo/
# stop frr
/usr/lib/frr/frrinit.sh stop "ojikamiya"

# delete frr namespace files
if [ -d "/etc/frr/ojikamiya" ]; then
	rm -r "/etc/frr/ojikamiya"
fi
[ -d /etc/netns/ojikamiya ] && rm -r /etc/netns/ojikamiya/
# stop frr
/usr/lib/frr/frrinit.sh stop "oji"

# delete frr namespace files
if [ -d "/etc/frr/oji" ]; then
	rm -r "/etc/frr/oji"
fi
[ -d /etc/netns/oji ] && rm -r /etc/netns/oji/
# stop frr
/usr/lib/frr/frrinit.sh stop "nishigahara"

# delete frr namespace files
if [ -d "/etc/frr/nishigahara" ]; then
	rm -r "/etc/frr/nishigahara"
fi
[ -d /etc/netns/nishigahara ] && rm -r /etc/netns/nishigahara/
# stop frr
/usr/lib/frr/frrinit.sh stop "komagome"

# delete frr namespace files
if [ -d "/etc/frr/komagome" ]; then
	rm -r "/etc/frr/komagome"
fi
[ -d /etc/netns/komagome ] && rm -r /etc/netns/komagome/
# stop frr
/usr/lib/frr/frrinit.sh stop "honkomagome"

# delete frr namespace files
if [ -d "/etc/frr/honkomagome" ]; then
	rm -r "/etc/frr/honkomagome"
fi
[ -d /etc/netns/honkomagome ] && rm -r /etc/netns/honkomagome/
# stop frr
/usr/lib/frr/frrinit.sh stop "todaimae"

# delete frr namespace files
if [ -d "/etc/frr/todaimae" ]; then
	rm -r "/etc/frr/todaimae"
fi
[ -d /etc/netns/todaimae ] && rm -r /etc/netns/todaimae/
# stop frr
/usr/lib/frr/frrinit.sh stop "roppongiicchome"

# delete frr namespace files
if [ -d "/etc/frr/roppongiicchome" ]; then
	rm -r "/etc/frr/roppongiicchome"
fi
[ -d /etc/netns/roppongiicchome ] && rm -r /etc/netns/roppongiicchome/
# stop frr
/usr/lib/frr/frrinit.sh stop "azabujuban"

# delete frr namespace files
if [ -d "/etc/frr/azabujuban" ]; then
	rm -r "/etc/frr/azabujuban"
fi
[ -d /etc/netns/azabujuban ] && rm -r /etc/netns/azabujuban/
# stop frr
/usr/lib/frr/frrinit.sh stop "shirakanetakanawa"

# delete frr namespace files
if [ -d "/etc/frr/shirakanetakanawa" ]; then
	rm -r "/etc/frr/shirakanetakanawa"
fi
[ -d /etc/netns/shirakanetakanawa ] && rm -r /etc/netns/shirakanetakanawa/
# stop frr
/usr/lib/frr/frrinit.sh stop "shiroganedai"

# delete frr namespace files
if [ -d "/etc/frr/shiroganedai" ]; then
	rm -r "/etc/frr/shiroganedai"
fi
[ -d /etc/netns/shiroganedai ] && rm -r /etc/netns/shiroganedai/
# stop frr
/usr/lib/frr/frrinit.sh stop "meguro"

# delete frr namespace files
if [ -d "/etc/frr/meguro" ]; then
	rm -r "/etc/frr/meguro"
fi
[ -d /etc/netns/meguro ] && rm -r /etc/netns/meguro/
# stop frr
/usr/lib/frr/frrinit.sh stop "zoshigaya"

# delete frr namespace files
if [ -d "/etc/frr/zoshigaya" ]; then
	rm -r "/etc/frr/zoshigaya"
fi
[ -d /etc/netns/zoshigaya ] && rm -r /etc/netns/zoshigaya/
# stop frr
/usr/lib/frr/frrinit.sh stop "nishiwaseda"

# delete frr namespace files
if [ -d "/etc/frr/nishiwaseda" ]; then
	rm -r "/etc/frr/nishiwaseda"
fi
[ -d /etc/netns/nishiwaseda ] && rm -r /etc/netns/nishiwaseda/
# stop frr
/usr/lib/frr/frrinit.sh stop "higashishinjuku"

# delete frr namespace files
if [ -d "/etc/frr/higashishinjuku" ]; then
	rm -r "/etc/frr/higashishinjuku"
fi
[ -d /etc/netns/higashishinjuku ] && rm -r /etc/netns/higashishinjuku/
# stop frr
/usr/lib/frr/frrinit.sh stop "kitasando"

# delete frr namespace files
if [ -d "/etc/frr/kitasando" ]; then
	rm -r "/etc/frr/kitasando"
fi
[ -d /etc/netns/kitasando ] && rm -r /etc/netns/kitasando/
ip netns exec honancho ip link del m27
ip netns exec nakanofujimicho ip link del m28
ip netns exec nakanoshimbashi ip link del m6
ip netns exec asakusa ip link del g18
ip netns exec tawaramachi ip link del g17
ip netns exec inaricho ip link del g16
ip netns exec ueno ip link del g15
ip netns exec uenohirokoji ip link del g14
ip netns exec suehirocho ip link del g13
ip netns exec kanda ip link del g12
ip netns exec mitsukoshimae ip link del g11
ip netns exec nihombashi ip link del g10
ip netns exec kyobashi ip link del g9
ip netns exec ginza ip link del g8
ip netns exec shimbashi ip link del g7
ip netns exec toranomon ip link del g6
ip netns exec tameikesanno ip link del g5
ip netns exec akasakamitsuke ip link del g4
ip netns exec aoyamaicchome ip link del g3
ip netns exec gaiemmae ip link del g2
ip netns exec omotesando ip link del g1
ip netns exec ogikubo ip link del m2
ip netns exec minamiasagaya ip link del m3
ip netns exec shinkoenji ip link del m4
ip netns exec higashikoenji ip link del m5
ip netns exec shinnakano ip link del m6
ip netns exec nakanosakaue ip link del m7
ip netns exec nishishinjuku ip link del m8
ip netns exec shinjuku ip link del m9
ip netns exec shinjukusanchome ip link del m10
ip netns exec shinjukugyoemmae ip link del m11
ip netns exec yotsuyasanchome ip link del m12
ip netns exec yotsuya ip link del m13
ip netns exec akasakamitsuke ip link del m14
ip netns exec kokkaigijidomae ip link del m15
ip netns exec kasumigaseki ip link del m16
ip netns exec ginza ip link del m17
ip netns exec tokyo ip link del m18
ip netns exec otemachi ip link del m19
ip netns exec awajicho ip link del m20
ip netns exec ochanomizu ip link del m21
ip netns exec hongosanchome ip link del m22
ip netns exec korakuen ip link del m23
ip netns exec myogadani ip link del m24
ip netns exec shinotsuka ip link del m25
ip netns exec kitasenju ip link del h21
ip netns exec minamisenju ip link del h20
ip netns exec minowa ip link del h19
ip netns exec iriya ip link del h18
ip netns exec ueno ip link del h17
ip netns exec nakaokachimachi ip link del h16
ip netns exec akihabara ip link del h15
ip netns exec kodemmacho ip link del h14
ip netns exec ningyocho ip link del h13
ip netns exec kayabacho ip link del h12
ip netns exec hatchobori ip link del h11
ip netns exec tsukiji ip link del h10
ip netns exec higashiginza ip link del h9
ip netns exec ginza ip link del h8
ip netns exec hibiya ip link del h7
ip netns exec kasumigaseki ip link del h6
ip netns exec toranomonhiruzu ip link del h5
ip netns exec kamiyacho ip link del h4
ip netns exec roppongi ip link del h3
ip netns exec hiroo ip link del h2
ip netns exec ebisu ip link del h1
ip netns exec nakano ip link del t2
ip netns exec ochiai ip link del t3
ip netns exec takadanobaba ip link del t4
ip netns exec waseda ip link del t5
ip netns exec kagurazaka ip link del t6
ip netns exec iidabashi ip link del t7
ip netns exec kudanshita ip link del t8
ip netns exec takebashi ip link del t9
ip netns exec otemachi ip link del t10
ip netns exec nihombashi ip link del t11
ip netns exec kayabacho ip link del t12
ip netns exec monzennakacho ip link del t13
ip netns exec kiba ip link del t14
ip netns exec toyocho ip link del t15
ip netns exec minamisunamachi ip link del t16
ip netns exec nishikasai ip link del t17
ip netns exec kasai ip link del t18
ip netns exec urayasu ip link del t19
ip netns exec minamigyotoku ip link del t20
ip netns exec gyotoku ip link del t21
ip netns exec myoden ip link del t22
ip netns exec barakinakayama ip link del t23
ip netns exec kitaayase ip link del c19
ip netns exec ayase ip link del c18
ip netns exec kitasenju ip link del c17
ip netns exec machiya ip link del c16
ip netns exec nishinippori ip link del c15
ip netns exec sendagi ip link del c14
ip netns exec nezu ip link del c13
ip netns exec yushima ip link del c12
ip netns exec shinochanomizu ip link del c11
ip netns exec otemachi ip link del c10
ip netns exec nijubashimae ip link del c9
ip netns exec hibiya ip link del c8
ip netns exec kasumigaseki ip link del c7
ip netns exec kokkaigijidomae ip link del c6
ip netns exec akasaka ip link del c5
ip netns exec nogizaka ip link del c4
ip netns exec omotesando ip link del c3
ip netns exec meijijingumae ip link del c2
ip netns exec yoyogikoen ip link del c1
ip netns exec wakoshi ip link del y2
ip netns exec chikatetsunarimasu ip link del y3
ip netns exec chikatetsuakatsuka ip link del y4
ip netns exec heiwadai ip link del y5
ip netns exec hikawadai ip link del y6
ip netns exec kotakemukaihara ip link del y7
ip netns exec senkawa ip link del y8
ip netns exec kanamecho ip link del y9
ip netns exec ikebukuro ip link del y10
ip netns exec higashiikebukuro ip link del y11
ip netns exec gokokuji ip link del y12
ip netns exec edogawabashi ip link del y13
ip netns exec iidabashi ip link del y14
ip netns exec ichigaya ip link del y15
ip netns exec kojimachi ip link del y16
ip netns exec nagatacho ip link del y17
ip netns exec sakuradamon ip link del y18
ip netns exec yurakucho ip link del y19
ip netns exec ginzaicchome ip link del y20
ip netns exec shintomicho ip link del y21
ip netns exec tsukishima ip link del y22
ip netns exec toyosu ip link del y23
ip netns exec tatsumi ip link del y24
ip netns exec shibuya ip link del z2
ip netns exec omotesando ip link del z3
ip netns exec aoyamaicchome ip link del z4
ip netns exec nagatacho ip link del z5
ip netns exec hanzomon ip link del z6
ip netns exec kudanshita ip link del z7
ip netns exec jimbocho ip link del z8
ip netns exec otemachi ip link del z9
ip netns exec mitsukoshimae ip link del z10
ip netns exec suitengumae ip link del z11
ip netns exec kiyosumishirakawa ip link del z12
ip netns exec sumiyoshi ip link del z13
ip netns exec kinshicho ip link del z14
ip netns exec akabaneiwabuchi ip link del n18
ip netns exec shimo ip link del n17
ip netns exec ojikamiya ip link del n16
ip netns exec oji ip link del n15
ip netns exec nishigahara ip link del n14
ip netns exec komagome ip link del n13
ip netns exec honkomagome ip link del n12
ip netns exec todaimae ip link del n11
ip netns exec korakuen ip link del n10
ip netns exec iidabashi ip link del n9
ip netns exec ichigaya ip link del n8
ip netns exec yotsuya ip link del n7
ip netns exec nagatacho ip link del n6
ip netns exec tameikesanno ip link del n5
ip netns exec roppongiicchome ip link del n4
ip netns exec azabujuban ip link del n3
ip netns exec shirakanetakanawa ip link del n2
ip netns exec shiroganedai ip link del n1
ip netns exec wakoshi ip link del f2
ip netns exec chikatetsunarimasu ip link del f3
ip netns exec chikatetsuakatsuka ip link del f4
ip netns exec heiwadai ip link del f5
ip netns exec hikawadai ip link del f6
ip netns exec kotakemukaihara ip link del f7
ip netns exec senkawa ip link del f8
ip netns exec kanamecho ip link del f9
ip netns exec ikebukuro ip link del f10
ip netns exec zoshigaya ip link del f11
ip netns exec nishiwaseda ip link del f12
ip netns exec higashishinjuku ip link del f13
ip netns exec shinjukusanchome ip link del f14
ip netns exec kitasando ip link del f15
ip netns exec meijijingumae ip link del f16
ip netns del honancho
ip netns del nakanofujimicho
ip netns del nakanoshimbashi
ip netns del asakusa
ip netns del tawaramachi
ip netns del inaricho
ip netns del ueno
ip netns del uenohirokoji
ip netns del suehirocho
ip netns del kanda
ip netns del mitsukoshimae
ip netns del nihombashi
ip netns del kyobashi
ip netns del ginza
ip netns del shimbashi
ip netns del toranomon
ip netns del tameikesanno
ip netns del akasakamitsuke
ip netns del aoyamaicchome
ip netns del gaiemmae
ip netns del omotesando
ip netns del shibuya
ip netns del ogikubo
ip netns del minamiasagaya
ip netns del shinkoenji
ip netns del higashikoenji
ip netns del shinnakano
ip netns del nakanosakaue
ip netns del nishishinjuku
ip netns del shinjuku
ip netns del shinjukusanchome
ip netns del shinjukugyoemmae
ip netns del yotsuyasanchome
ip netns del yotsuya
ip netns del kokkaigijidomae
ip netns del kasumigaseki
ip netns del tokyo
ip netns del otemachi
ip netns del awajicho
ip netns del ochanomizu
ip netns del hongosanchome
ip netns del korakuen
ip netns del myogadani
ip netns del shinotsuka
ip netns del ikebukuro
ip netns del kitasenju
ip netns del minamisenju
ip netns del minowa
ip netns del iriya
ip netns del nakaokachimachi
ip netns del akihabara
ip netns del kodemmacho
ip netns del ningyocho
ip netns del kayabacho
ip netns del hatchobori
ip netns del tsukiji
ip netns del higashiginza
ip netns del hibiya
ip netns del toranomonhiruzu
ip netns del kamiyacho
ip netns del roppongi
ip netns del hiroo
ip netns del ebisu
ip netns del nakameguro
ip netns del nakano
ip netns del ochiai
ip netns del takadanobaba
ip netns del waseda
ip netns del kagurazaka
ip netns del iidabashi
ip netns del kudanshita
ip netns del takebashi
ip netns del monzennakacho
ip netns del kiba
ip netns del toyocho
ip netns del minamisunamachi
ip netns del nishikasai
ip netns del kasai
ip netns del urayasu
ip netns del minamigyotoku
ip netns del gyotoku
ip netns del myoden
ip netns del barakinakayama
ip netns del nishifunabashi
ip netns del kitaayase
ip netns del ayase
ip netns del machiya
ip netns del nishinippori
ip netns del sendagi
ip netns del nezu
ip netns del yushima
ip netns del shinochanomizu
ip netns del nijubashimae
ip netns del akasaka
ip netns del nogizaka
ip netns del meijijingumae
ip netns del yoyogikoen
ip netns del yoyogiuehara
ip netns del wakoshi
ip netns del chikatetsunarimasu
ip netns del chikatetsuakatsuka
ip netns del heiwadai
ip netns del hikawadai
ip netns del kotakemukaihara
ip netns del senkawa
ip netns del kanamecho
ip netns del higashiikebukuro
ip netns del gokokuji
ip netns del edogawabashi
ip netns del ichigaya
ip netns del kojimachi
ip netns del nagatacho
ip netns del sakuradamon
ip netns del yurakucho
ip netns del ginzaicchome
ip netns del shintomicho
ip netns del tsukishima
ip netns del toyosu
ip netns del tatsumi
ip netns del shinkiba
ip netns del hanzomon
ip netns del jimbocho
ip netns del suitengumae
ip netns del kiyosumishirakawa
ip netns del sumiyoshi
ip netns del kinshicho
ip netns del oshiage
ip netns del akabaneiwabuchi
ip netns del shimo
ip netns del ojikamiya
ip netns del oji
ip netns del nishigahara
ip netns del komagome
ip netns del honkomagome
ip netns del todaimae
ip netns del roppongiicchome
ip netns del azabujuban
ip netns del shirakanetakanawa
ip netns del shiroganedai
ip netns del meguro
ip netns del zoshigaya
ip netns del nishiwaseda
ip netns del higashishinjuku
ip netns del kitasando
