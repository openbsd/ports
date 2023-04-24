COMMENT =	unikey Vietnamese support for fcitx5

V =		5.0.13
PKGNAME =	fcitx-unikey-$V
REVISION =      0

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

MODULES =       devel/kf5
MODQT5_DEPS =	No

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/iso-codes

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic \
			misc/shared-mime-info

LIB_DEPENDS =		inputmethods/fcitx \
			inputmethods/fcitx-qt

.include <bsd.port.mk>
