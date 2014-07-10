# $OpenBSD: Makefile,v 1.8 2014/07/10 08:19:47 zhuk Exp $

PKGNAME =		kde4-${MODKDE4_VERSION}

COMMENT-minimal =	KDE4 desktop meta-package (minimal installation)
COMMENT-main =		KDE4 desktop meta-package (full installation)
COMMENT-extras =	non-SC KDE4 applications
COMMENT-admin =		KDE SC system administrator tools
COMMENT-games =		KDE SC games
COMMENT-network =	KDE SC network applications
COMMENT-sdk =		KDE SC development applications
COMMENT-toys =		KDE SC small funny applications

PKGNAME-minimal =	kde4-minimal-${MODKDE4_VERSION}
PKGNAME-main =		kde4-${MODKDE4_VERSION}
PKGNAME-extras =	kde4-extras-${MODKDE4_VERSION}
PKGNAME-admin =		kdeadmin-${MODKDE4_VERSION}
PKGNAME-games =		kdegames-${MODKDE4_VERSION}
PKGNAME-network =	kdenetwork-${MODKDE4_VERSION}
PKGNAME-sdk =		kdesdk-${MODKDE4_VERSION}
PKGNAME-toys =		kdetoys-${MODKDE4_VERSION}

REVISION-accessiblity =	0
REVISION-minimal =	2
REVISION-main =		3
REVISION-network =	1

MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>

MULTI_PACKAGES +=	-main -minimal -games

# after KDE 4.11
MULTI_PACKAGES +=	-admin -network -sdk -toys

# not ready
#MULTI_PACKAGES +=	-extras

# Specialization packages. Separate to be able to easily
# convert them into proper packages in the future - will
# be needed, probably, when we'll decide to drop KDE3.

KDE4-accessibility = \
	${MODKDE4_DEP_DIR}/artikulate	\
	${MODKDE4_DEP_DIR}/jovie	\
	${MODKDE4_DEP_DIR}/kaccessible	\
	${MODKDE4_DEP_DIR}/kmag		\
	${MODKDE4_DEP_DIR}/kmousetool	\
	${MODKDE4_DEP_DIR}/kmouth

RUN_DEPENDS-admin = \
	${MODKDE4_DEP_DIR}/kcron	\
	${MODKDE4_DEP_DIR}/ksystemlog	\
	${MODKDE4_DEP_DIR}/kuser

KDE4-bindings = \
	${MODKDE4_DEP_DIR}/smokegen	\
	${MODKDE4_DEP_DIR}/smokeqt	\
	${MODKDE4_DEP_DIR}/smokekde	\
	${MODKDE4_DEP_DIR}/p5-qt	\
	${MODKDE4_DEP_DIR}/p5-kde	\
	${MODKDE4_DEP_DIR}/py-kde	\
	${MODKDE4_DEP_DIR}/ruby-qt	\
	${MODKDE4_DEP_DIR}/korundum	\
	${MODKDE4_DEP_DIR}/qyoto	\
	${MODKDE4_DEP_DIR}/kimono

KDE4-edu = \
	${MODKDE4_DEP_DIR}/blinken	\
	${MODKDE4_DEP_DIR}/cantor	\
	${MODKDE4_DEP_DIR}/analitza	\
	${MODKDE4_DEP_DIR}/kalgebra	\
	${MODKDE4_DEP_DIR}/kanagram	\
	${MODKDE4_DEP_DIR}/kbruch	\
	${MODKDE4_DEP_DIR}/kgeography	\
	${MODKDE4_DEP_DIR}/khangman	\
	${MODKDE4_DEP_DIR}/kig		\
	${MODKDE4_DEP_DIR}/kiten	\
	${MODKDE4_DEP_DIR}/klettres	\
	${MODKDE4_DEP_DIR}/kmplot	\
	${MODKDE4_DEP_DIR}/kstars	\
	${MODKDE4_DEP_DIR}/ktouch	\
	${MODKDE4_DEP_DIR}/kturtle	\
	${MODKDE4_DEP_DIR}/kwordquiz	\
	${MODKDE4_DEP_DIR}/libkdeedu	\
	${MODKDE4_DEP_DIR}/marble	\
	${MODKDE4_DEP_DIR}/pairs	\
	${MODKDE4_DEP_DIR}/parley	\
	${MODKDE4_DEP_DIR}/rocs		\
	${MODKDE4_DEP_DIR}/step
# broken
#	${MODKDE4_DEP_DIR}/kalzium

KDE4-graphics = \
	${MODKDE4_DEP_DIR}/graphics-mobipocket	\
	${MODKDE4_DEP_DIR}/graphics-strigi-analyzer \
	${MODKDE4_DEP_DIR}/graphics-thumbnailers \
	${MODKDE4_DEP_DIR}/gwenview		\
	${MODKDE4_DEP_DIR}/kamera		\
	${MODKDE4_DEP_DIR}/kcolorchooser	\
	${MODKDE4_DEP_DIR}/kgamma		\
	${MODKDE4_DEP_DIR}/kolourpaint		\
	${MODKDE4_DEP_DIR}/kruler		\
	${MODKDE4_DEP_DIR}/ksaneplugin		\
	${MODKDE4_DEP_DIR}/ksnapshot		\
	${MODKDE4_DEP_DIR}/libkdcraw		\
	${MODKDE4_DEP_DIR}/libkexiv2		\
	${MODKDE4_DEP_DIR}/libkipi		\
	${MODKDE4_DEP_DIR}/libksane		\
	${MODKDE4_DEP_DIR}/okular		\
	${MODKDE4_DEP_DIR}/svgpart

RUN_DEPENDS-games = \
	${MODKDE4_DEP_DIR}/bomber	\
	${MODKDE4_DEP_DIR}/bovo		\
	${MODKDE4_DEP_DIR}/granatier	\
	${MODKDE4_DEP_DIR}/kapman	\
	${MODKDE4_DEP_DIR}/katomic	\
	${MODKDE4_DEP_DIR}/kblackbox	\
	${MODKDE4_DEP_DIR}/kblocks	\
	${MODKDE4_DEP_DIR}/kbounce	\
	${MODKDE4_DEP_DIR}/kbreakout	\
	${MODKDE4_DEP_DIR}/kdiamond	\
	${MODKDE4_DEP_DIR}/kfourinline	\
	${MODKDE4_DEP_DIR}/kgoldrunner	\
	${MODKDE4_DEP_DIR}/kigo		\
	${MODKDE4_DEP_DIR}/killbots	\
	${MODKDE4_DEP_DIR}/kiriki	\
	${MODKDE4_DEP_DIR}/kjumpingcube \
	${MODKDE4_DEP_DIR}/klickety	\
	${MODKDE4_DEP_DIR}/klines	\
	${MODKDE4_DEP_DIR}/kmahjongg	\
	${MODKDE4_DEP_DIR}/kmines	\
	${MODKDE4_DEP_DIR}/knavalbattle	\
	${MODKDE4_DEP_DIR}/knetwalk	\
	${MODKDE4_DEP_DIR}/kolf		\
	${MODKDE4_DEP_DIR}/kollision	\
	${MODKDE4_DEP_DIR}/konquest	\
	${MODKDE4_DEP_DIR}/kpat		\
	${MODKDE4_DEP_DIR}/kreversi	\
	${MODKDE4_DEP_DIR}/kshisen	\
	${MODKDE4_DEP_DIR}/ksirk	\
	${MODKDE4_DEP_DIR}/ksnakeduel	\
	${MODKDE4_DEP_DIR}/kspaceduel	\
	${MODKDE4_DEP_DIR}/ksquares	\
	${MODKDE4_DEP_DIR}/ksudoku	\
	${MODKDE4_DEP_DIR}/ktuberling	\
	${MODKDE4_DEP_DIR}/kubrick	\
	${MODKDE4_DEP_DIR}/libkmahjongg	\
	${MODKDE4_DEP_DIR}/lskat	\
	${MODKDE4_DEP_DIR}/picmi

KDE4-multimedia = \
	${MODKDE4_DEP_DIR}/audiocd-kio	\
	${MODKDE4_DEP_DIR}/ffmpegthumbs	\
	${MODKDE4_DEP_DIR}/dragon	\
	${MODKDE4_DEP_DIR}/juk		\
	${MODKDE4_DEP_DIR}/kmix		\
	${MODKDE4_DEP_DIR}/kscd		\
	${MODKDE4_DEP_DIR}/mplayerthumbs

RUN_DEPENDS-network = \
	${MODKDE4_DEP_DIR}/network-filesharing \
	${MODKDE4_DEP_DIR}/network-strigi-analyzers \
	${MODKDE4_DEP_DIR}/kget			\
	${MODKDE4_DEP_DIR}/kopete		\
	${MODKDE4_DEP_DIR}/kppp			\
	${MODKDE4_DEP_DIR}/krdc			\
	${MODKDE4_DEP_DIR}/krfb			\
	${MODKDE4_DEP_DIR}/zeroconf-ioslave

RUN_DEPENDS-sdk = \
	${MODKDE4_DEP_DIR}/cervisia		\
	${MODKDE4_DEP_DIR}/dev-scripts		\
	${MODKDE4_DEP_DIR}/dev-utils		\
	${MODKDE4_DEP_DIR}/dolphin-plugins	\
	${MODKDE4_DEP_DIR}/kapptemplate		\
	${MODKDE4_DEP_DIR}/kcachegrind		\
	${MODKDE4_DEP_DIR}/kompare		\
	${MODKDE4_DEP_DIR}/lokalize		\
	${MODKDE4_DEP_DIR}/okteta		\
	${MODKDE4_DEP_DIR}/poxml		\
	${MODKDE4_DEP_DIR}/sdk-kioslaves	\
	${MODKDE4_DEP_DIR}/sdk-strigi-analyzers	\
	${MODKDE4_DEP_DIR}/sdk-thumbnailers	\
	${MODKDE4_DEP_DIR}/umbrello

RUN_DEPENDS-toys = \
	${MODKDE4_DEP_DIR}/amor		\
	${MODKDE4_DEP_DIR}/kteatime	\
	${MODKDE4_DEP_DIR}/ktux

KDE4-utils = \
	${MODKDE4_DEP_DIR}/ark			\
	${MODKDE4_DEP_DIR}/filelight		\
	${MODKDE4_DEP_DIR}/kdf			\
	${MODKDE4_DEP_DIR}/kfloppy		\
	${MODKDE4_DEP_DIR}/kremotecontrol	\
	${MODKDE4_DEP_DIR}/ktimer		\
	${MODKDE4_DEP_DIR}/nepomuk-widgets	\
	${MODKDE4_DEP_DIR}/print-manager	\
	${MODKDE4_DEP_DIR}/superkaramba		\
	${MODKDE4_DEP_DIR}/sweeper

RUN_DEPENDS-minimal = \
	${KDE4-accessibility}			\
	${MODKDE4_DEP_DIR}/baseapps		\
	${MODKDE4_DEP_DIR}/kate			\
	${MODKDE4_DEP_DIR}/kgpg			\
	${MODKDE4_DEP_DIR}/konsole		\
	${MODKDE4_DEP_DIR}/kwalletmanager	\
	${MODKDE4_DEP_DIR}/workspace

RUN_DEPENDS-main = \
	${BUILD_PKGPATH},-minimal=${MODKDE4_VERSION} \
	${BUILD_PKGPATH},-admin=${MODKDE4_VERSION} \
	${BUILD_PKGPATH},-games=${MODKDE4_VERSION} \
	${BUILD_PKGPATH},-network=${MODKDE4_VERSION} \
	${BUILD_PKGPATH},-sdk=${MODKDE4_VERSION} \
	${BUILD_PKGPATH},-toys=${MODKDE4_VERSION} \
	${KDE4-accessibility}			\
	${KDE4-edu}				\
	${KDE4-graphics}			\
	${KDE4-multimedia}			\
	${KDE4-utils}				\
	${MODKDE4_DEP_DIR}/artwork		\
	${MODKDE4_DEP_DIR}/base-artwork		\
	${MODKDE4_DEP_DIR}/kate			\
	${MODKDE4_DEP_DIR}/kgpg			\
	${MODKDE4_DEP_DIR}/konsole		\
	${MODKDE4_DEP_DIR}/kwalletmanager	\
	${MODKDE4_DEP_DIR}/pim			\
	${MODKDE4_DEP_DIR}/wallpapers		\
	${MODKDE4_DEP_DIR}/workspace

RUN_DEPENDS-extras = \
	editors/kile-kde4		\
	graphics/digikam-kde4,-main	\
	graphics/digikam-kde4,-kipi	\
	multimedia/k3b-kde4		\
	multimedia/kdenlive		\
	net/ktorrent-kde4		\
	x11/yakuake-kde4

MODULES =		x11/kde4
MODKDE4_NO_QT =		Yes
MODKDE4_USE =

.include <bsd.port.mk>
