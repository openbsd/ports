COMMENT =	unikey Vietnamese support for fcitx5

DISTNAME =	fcitx5-unikey-5.1.5
PKGNAME =	${DISTNAME:S/fcitx5/fcitx/}

CATEGORIES =	inputmethods

HOMEPAGE =	https://github.com/fcitx/fcitx5-unikey

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>


SITES =		https://download.fcitx-im.org/fcitx5/fcitx5-unikey/
EXTRACT_SUFX =	.tar.zst

# GPLv2.0+ and LGPLv2.0+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Fcitx5Config Fcitx5Core Fcitx5Qt6WidgetsAddons
WANTLIB += Fcitx5Utils GL Qt6Core Qt6Gui Qt6Widgets m

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
