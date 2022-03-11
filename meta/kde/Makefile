PKGNAME =		kde-${MODKDE_VERSION}

COMMENT-accessibility =	KDE accessibility applications
COMMENT-admin =		KDE system administrator tools
COMMENT-education =	KDE education applications
COMMENT-games =		KDE games
COMMENT-graphics =	KDE graphics applications
COMMENT-main =		KDE meta-package (full installation)
COMMENT-multimedia =	KDE multimedia applications
COMMENT-network =	KDE network applications
COMMENT-pim =		KDE PIM personal information managemen applications
COMMENT-development =	KDE development applications
COMMENT-utils =		KDE utilities

PKGNAME-accessibility =	kde-accessibility-${MODKDE_VERSION}
PKGNAME-admin =		kde-admin-${MODKDE_VERSION}
PKGNAME-education =	kde-education-${MODKDE_VERSION}
PKGNAME-games =		kde-games-${MODKDE_VERSION}
PKGNAME-graphics =	kde-graphics-${MODKDE_VERSION}
PKGNAME-main =		kde-${MODKDE_VERSION}
PKGNAME-multimedia =	kde-multimedia-${MODKDE_VERSION}
PKGNAME-network =	kde-network-${MODKDE_VERSION}
PKGNAME-pim =		kde-pim-${MODKDE_VERSION}
PKGNAME-development =	kde-development-${MODKDE_VERSION}
PKGNAME-utils =		kde-utils-${MODKDE_VERSION}

MULTI_PACKAGES +=	-main \
			-games \
			-admin \
			-network \
			-pim \
			-accessibility \
			-education \
			-graphics \
			-multimedia \
			-development \
			-utils \

HOMEPAGE =	https://kde.org

MODULES =	x11/kde-applications

WANTLIB-accessibility =
LIB_DEPENDS-accessibility =
RUN_DEPENDS-accessibility = \
	x11/kde-applications/kmag \
	x11/kde-applications/kmousetool \
	x11/kde-applications/kmouth

WANTLIB-admin =
LIB_DEPENDS-admin =
RUN_DEPENDS-admin = \
	x11/kde-applications/kcron \
	x11/kde-applications/ksystemlog

WANTLIB-education =
LIB_DEPENDS-education =
RUN_DEPENDS-education = \
	x11/kde-applications/analitza \
	x11/kde-applications/artikulate \
	x11/kde-applications/blinken \
	x11/kde-applications/cantor \
	x11/kde-applications/kalgebra \
	x11/kde-applications/kalzium \
	x11/kde-applications/kanagram \
	x11/kde-applications/kbruch \
	x11/kde-applications/kgeography \
	x11/kde-applications/khangman \
	x11/kde-applications/kig \
	x11/kde-applications/kiten \
	x11/kde-applications/klettres \
	x11/kde-applications/kmplot \
	x11/kde-applications/ktouch \
	x11/kde-applications/kturtle \
	x11/kde-applications/kwordquiz \
	x11/kde-applications/marble \
	x11/kde-applications/minuet \
	x11/kde-applications/rocs \
	x11/kde-applications/step

# Not ported yet
# x11/kde-applications/parley

RUN_DEPENDS-education += \
	astro/kstars

WANTLIB-graphics =
LIB_DEPENDS-graphics =
RUN_DEPENDS-graphics = \
	x11/kde-applications/gwenview \
	x11/kde-applications/kamera \
	x11/kde-applications/kcolorchooser \
	x11/kde-applications/kdegraphics-mobipocket \
	x11/kde-applications/kdegraphics-thumbnailers \
	x11/kde-applications/kolourpaint \
	x11/kde-applications/kruler \
	x11/kde-applications/okular \
	x11/kde-applications/kontrast \
	x11/kde-applications/spectacle \
	x11/kde-applications/svgpart

RUN_DEPENDS-graphics += \
	geo/kgeotag \
	graphics/digikam \
	graphics/krita \
	graphics/skanlite

WANTLIB-games =
LIB_DEPENDS-games =
RUN_DEPENDS-games = \
	x11/kde-applications/bomber \
	x11/kde-applications/bovo \
	x11/kde-applications/granatier \
	x11/kde-applications/kajongg \
	x11/kde-applications/kapman \
	x11/kde-applications/katomic \
	x11/kde-applications/kblackbox \
	x11/kde-applications/kblocks \
	x11/kde-applications/kbounce \
	x11/kde-applications/kbreakout \
	x11/kde-applications/kdiamond \
	x11/kde-applications/kfourinline \
	x11/kde-applications/kgoldrunner \
	x11/kde-applications/kigo \
	x11/kde-applications/killbots \
	x11/kde-applications/kiriki \
	x11/kde-applications/kjumpingcube \
	x11/kde-applications/klickety \
	x11/kde-applications/klines \
	x11/kde-applications/kmahjongg \
	x11/kde-applications/kmines \
	x11/kde-applications/knavalbattle \
	x11/kde-applications/knetwalk \
	x11/kde-applications/kolf \
	x11/kde-applications/kollision \
	x11/kde-applications/konquest \
	x11/kde-applications/kreversi \
	x11/kde-applications/kshisen \
	x11/kde-applications/ksirk \
	x11/kde-applications/ksnakeduel \
	x11/kde-applications/kspaceduel \
	x11/kde-applications/ksquares \
	x11/kde-applications/ksudoku \
	x11/kde-applications/ktuberling \
	x11/kde-applications/kubrick \
	x11/kde-applications/lskat \
	x11/kde-applications/palapeli \
	x11/kde-applications/picmi

# Not yet ported
#x11/kde-applications/kpatience
#x11/kde-applications/knights

WANTLIB-multimedia =
LIB_DEPENDS-multimedia =
RUN_DEPENDS-multimedia = \
	x11/kde-applications/audiocd-kio \
	x11/kde-applications/dragon \
	x11/kde-applications/elisa \
	x11/kde-applications/ffmpegthumbs \
	x11/kde-applications/juk \
	x11/kde-applications/kdenlive \
	x11/kde-applications/kmix

# Not yet ported
#x11/kde-applications/kwave
#x11/kde-applications/k3b
#x11/kde-applications/kamoso

WANTLIB-network =
LIB_DEPENDS-network =
RUN_DEPENDS-network = \
	x11/kde-applications/kdenetwork-filesharing \
	x11/kde-applications/kget \
	x11/kde-applications/kio-extras \
	x11/kde-applications/kmailtransport \
	x11/kde-applications/krdc \
	x11/kde-applications/krfb \
	x11/kde-applications/zeroconf-ioslave

# Not yet ported
#x11/kde-applications/kopete

RUN_DEPENDS-network += \
	net/konversation \
	net/ktorrent \
	net/libktorrent \
	net/kdeconnect-kde

KDE_AKONADI = \
	x11/kde-applications/akonadi \
	x11/kde-applications/akonadi-calendar \
	x11/kde-applications/akonadi-calendar-tools \
	x11/kde-applications/akonadi-contacts \
	x11/kde-applications/akonadi-import-wizard \
	x11/kde-applications/akonadi-mime \
	x11/kde-applications/akonadi-notes \
	x11/kde-applications/akonadi-search \
	x11/kde-applications/akonadiconsole

WANTLIB-pim =
LIB_DEPENDS-pim =
RUN_DEPENDS-pim = \
	${KDE_AKONADI} \
	x11/kde-applications/akregator \
	x11/kde-applications/calendarsupport \
	x11/kde-applications/eventviews \
	x11/kde-applications/grantlee-editor \
	x11/kde-applications/kaddressbook \
	x11/kde-applications/kalarm \
	x11/kde-applications/kdepim-addons \
	x11/kde-applications/kdepim-runtime \
	x11/kde-applications/kleopatra \
	x11/kde-applications/kmail \
	x11/kde-applications/kmail-account-wizard \
	x11/kde-applications/knotes \
	x11/kde-applications/kontact \
	x11/kde-applications/korganizer \
	x11/kde-applications/kpimtextedit

WANTLIB-utils =
LIB_DEPENDS-utils =
RUN_DEPENDS-utils = \
	x11/kde-applications/ark \
	x11/kde-applications/filelight \
	x11/kde-applications/kbackup \
	x11/kde-applications/kcalc \
	x11/kde-applications/kcharselect \
	x11/kde-applications/kdebugsettings \
	x11/kde-applications/kdf \
	x11/kde-applications/kfloppy \
	x11/kde-applications/kgpg \
	x11/kde-applications/kteatime \
	x11/kde-applications/ktimer \
	x11/kde-applications/kwalletmanager \
	x11/kde-applications/print-manager \
	x11/kde-applications/sweeper

RUN_DEPENDS-utils += \
	x11/yakuake

KDE_SDK = \
	x11/kde-applications/cervisia \
	x11/kde-applications/kapptemplate \
	x11/kde-applications/kcachegrind \
	x11/kde-applications/kde-dev-scripts \
	x11/kde-applications/kde-dev-utils \
	x11/kde-applications/kdesdk-kioslaves \
	x11/kde-applications/kdesdk-thumbnailers \
	x11/kde-applications/kompare \
	x11/kde-applications/lokalize \
	x11/kde-applications/poxml \

WANTLIB-development =
LIB_DEPENDS-development =
RUN_DEPENDS-development = \
	${KDE_SDK} \
	x11/kde-applications/baloo-widgets \
	x11/kde-applications/grantleetheme \
	x11/kde-applications/incidenceeditor \
	x11/kde-applications/kalarmcal \
	x11/kde-applications/kcalutils \
	x11/kde-applications/kdeedu-data \
	x11/kde-applications/kidentitymanagement \
	x11/kde-applications/kimap \
	x11/kde-applications/kirigami-gallery \
	x11/kde-applications/kitinerary \
	x11/kde-applications/kldap \
	x11/kde-applications/kmbox \
	x11/kde-applications/kmime \
	x11/kde-applications/kontactinterface \
	x11/kde-applications/kopeninghours \
	x11/kde-applications/kpkpass \
	x11/kde-applications/kqtquickcharts \
	x11/kde-applications/kross-interpreters \
	x11/kde-applications/ksmtp \
	x11/kde-applications/ktnef \
	x11/kde-applications/libgravatar \
	x11/kde-applications/libkcddb \
	x11/kde-applications/libkcompactdisc \
	x11/kde-applications/libkdcraw \
	x11/kde-applications/libkdegames \
	x11/kde-applications/libkdepim \
	x11/kde-applications/libkeduvocdocument \
	x11/kde-applications/libkexiv2 \
	x11/kde-applications/libkgapi \
	x11/kde-applications/libkipi \
	x11/kde-applications/libkleo \
	x11/kde-applications/libkmahjongg \
	x11/kde-applications/libkomparediff2 \
	x11/kde-applications/libksane \
	x11/kde-applications/libksieve \
	x11/kde-applications/mailcommon \
	x11/kde-applications/mailimporter \
	x11/kde-applications/mbox-importer \
	x11/kde-applications/messagelib \
	x11/kde-applications/pim-data-exporter \
	x11/kde-applications/pim-sieve-editor \
	x11/kde-applications/pimcommon \
	x11/kde-applications/umbrello \
	x11/kde-applications/kimagemapeditor

RUN_DEPENDS-development += \
	x11/kde-applications/okteta

# Not yet ported
#x11/kde-applications/signon-kwallet-extension
#x11/kde-applications/kpat
#x11/kde-applications/kaccounts-integration
#x11/kde-applications/kaccounts-providers

WANTLIB-main =
LIB_DEPENDS-main =
RUN_DEPENDS-main = \
	x11/kde-applications/dolphin \
	x11/kde-applications/dolphin-plugins \
	x11/kde-applications/kate \
	x11/kde-applications/kdialog \
	x11/kde-applications/keditbookmarks \
	x11/kde-applications/kfind \
	x11/kde-applications/khelpcenter \
	x11/kde-applications/kipi-plugins \
	x11/kde-applications/konqueror \
	x11/kde-applications/konsole \
	${BUILD_PKGPATH},-accessibility=${MODKDE_VERSION} \
	${BUILD_PKGPATH},-admin=${MODKDE_VERSION} \
	${BUILD_PKGPATH},-development=${MODKDE_VERSION} \
	${BUILD_PKGPATH},-education=${MODKDE_VERSION} \
	${BUILD_PKGPATH},-games=${MODKDE_VERSION} \
	${BUILD_PKGPATH},-graphics=${MODKDE_VERSION} \
	${BUILD_PKGPATH},-multimedia=${MODKDE_VERSION} \
	${BUILD_PKGPATH},-network=${MODKDE_VERSION} \
	${BUILD_PKGPATH},-network=${MODKDE_VERSION} \
	${BUILD_PKGPATH},-pim=${MODKDE_VERSION} \
	${BUILD_PKGPATH},-utils=${MODKDE_VERSION}

.include <bsd.port.mk>
