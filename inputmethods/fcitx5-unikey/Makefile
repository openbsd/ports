COMMENT =	unikey Vietnamese support for fcitx5

V =		5.0.9
PKGNAME =	fcitx5-unikey-$V

GH_ACCOUNT =    fcitx
GH_PROJECT =    fcitx5-unikey
GH_TAGNAME =    $V

CATEGORIES =	inputmethods

HOMEPAGE =	https://github.com/fcitx/fcitx5-unikey

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# GPLv2.0+ and LGPLv2.0+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Fcitx5Config Fcitx5Core Fcitx5Utils
WANTLIB += Fcitx5Qt5WidgetsAddons Qt5Core Qt5Gui Qt5Widgets m

EXTRACT_SUFX =	.tar.gz

COMPILER =      base-clang ports-clang

MODULES =       devel/kf5
MODQT5_DEPS =	No

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/iso-codes

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic \
			misc/shared-mime-info

LIB_DEPENDS =		inputmethods/fcitx5 \
			inputmethods/fcitx5-qt

.include <bsd.port.mk>
