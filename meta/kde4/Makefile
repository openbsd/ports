# $OpenBSD: Makefile,v 1.67 2019/08/18 14:40:31 rsadowski Exp $

PKGNAME =		kde4-${MODKDE4_VERSION}

COMMENT-minimal =	KDE4 desktop meta-package (minimal installation)
COMMENT-main =		KDE4 desktop meta-package (full installation)
COMMENT-extras =	non-SC KDE4 applications
COMMENT-admin =		KDE4 SC system administrator tools
COMMENT-games =		KDE4 SC games
COMMENT-network =	KDE4 SC network applications
COMMENT-sdk =		KDE4 SC development applications
COMMENT-toys =		KDE4 SC small funny applications

PKGNAME-minimal =	kde4-minimal-${MODKDE4_VERSION}
PKGNAME-main =		kde4-${MODKDE4_VERSION}
PKGNAME-extras =	kde4-extras-${MODKDE4_VERSION}
PKGNAME-admin =		kdeadmin-${MODKDE4_VERSION}
PKGNAME-games =		kdegames-${MODKDE4_VERSION}
PKGNAME-network =	kdenetwork-${MODKDE4_VERSION}
PKGNAME-sdk =		kdesdk-${MODKDE4_VERSION}
PKGNAME-toys =		kdetoys-${MODKDE4_VERSION}

PKGSPEC-admin =		kdeadmin-${MODKDE4_SPEC}
PKGSPEC-games =		kdegames-${MODKDE4_SPEC}
PKGSPEC-network =	kdenetwork-${MODKDE4_SPEC}
PKGSPEC-sdk =		kdesdk-${MODKDE4_SPEC}
PKGSPEC-toys =		kdetoys-${MODKDE4_SPEC}

REVISION-minimal =	10
REVISION-games = 3
REVISION-sdk = 4
REVISION-edu = 7
REVISION-multimedia = 0
REVISION-network = 0
REVISION-extras = 10
REVISION-main =		28
REVISION-admin =	1
REVISION-graphics =	3

MAINTAINER =		KDE porting team <openbsd-kde@googlegroups.com>

MULTI_PACKAGES +=	-main -minimal -games

# after KDE 4.11
MULTI_PACKAGES +=	-admin -network -sdk -toys

# stuff outside KDE SC
MULTI_PACKAGES +=	-extras

MODULES =		x11/kde4
MODKDE4_NO_QT =		Yes
MODKDE4_RESOURCES =	Yes
MODKDE4_USE =
KDE4_ONLY =		No

# Specialization packages. Separate to be able to easily
# convert them into proper packages in the future - will
# be needed, probably, when we'll decide to drop KDE3.

KDE4-accessibility = \
	${MODKDE4_DEP_DIR}/jovie	\
	${MODKDE4_DEP_DIR}/kaccessible

RUN_DEPENDS-admin = \
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
	${MODKDE4_DEP_DIR}/kturtle	\
	${MODKDE4_DEP_DIR}/kwordquiz	\
	${MODKDE4_DEP_DIR}/libkdeedu	\
	${MODKDE4_DEP_DIR}/pairs	\
	${MODKDE4_DEP_DIR}/parley	\
	${MODKDE4_DEP_DIR}/rocs

KDE4-graphics = \
	${MODKDE4_DEP_DIR}/graphics-mobipocket	\
	${MODKDE4_DEP_DIR}/graphics-strigi-analyzer \
	${MODKDE4_DEP_DIR}/graphics-thumbnailers \
	${MODKDE4_DEP_DIR}/kamera		\
	${MODKDE4_DEP_DIR}/kcolorchooser	\
	${MODKDE4_DEP_DIR}/kgamma		\
	${MODKDE4_DEP_DIR}/kolourpaint		\
	${MODKDE4_DEP_DIR}/kruler		\
	${MODKDE4_DEP_DIR}/ksnapshot		\
	${MODKDE4_DEP_DIR}/libkexiv2		\
	${MODKDE4_DEP_DIR}/svgpart

RUN_DEPENDS-games = \
	${MODKDE4_DEP_DIR}/kpat		\
	${MODKDE4_DEP_DIR}/picmi

KDE4-multimedia = \
	${MODKDE4_DEP_DIR}/audiocd-kio	\
	${MODKDE4_DEP_DIR}/ffmpegthumbs	\
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
	${MODKDE4_DEP_DIR}/krfb

RUN_DEPENDS-sdk = \
	${MODKDE4_DEP_DIR}/dev-scripts		\
	${MODKDE4_DEP_DIR}/dev-utils		\
	${MODKDE4_DEP_DIR}/kapptemplate		\
	${MODKDE4_DEP_DIR}/kcachegrind		\
	${MODKDE4_DEP_DIR}/lokalize		\
	${MODKDE4_DEP_DIR}/poxml		\
	${MODKDE4_DEP_DIR}/sdk-kioslaves	\
	${MODKDE4_DEP_DIR}/sdk-strigi-analyzers	\
	${MODKDE4_DEP_DIR}/sdk-thumbnailers

RUN_DEPENDS-toys = \
	${MODKDE4_DEP_DIR}/amor		\
	${MODKDE4_DEP_DIR}/kteatime	\
	${MODKDE4_DEP_DIR}/ktux

KDE4-utils = \
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
	${MODKDE4_DEP_DIR}/kgpg			\
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
	${MODKDE4_DEP_DIR}/kgpg			\
	${MODKDE4_DEP_DIR}/kwalletmanager	\
	${MODKDE4_DEP_DIR}/pim			\
	${MODKDE4_DEP_DIR}/wallpapers		\
	${MODKDE4_DEP_DIR}/workspace

RUN_DEPENDS-extras = \
	graphics/digikam-kde4,-main	\
	graphics/digikam-kde4,-kipi	\
	productivity/kmymoney

.include <bsd.port.mk>
