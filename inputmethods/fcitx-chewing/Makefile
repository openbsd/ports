COMMENT =	chewing wrapper for fcitx5

V =		5.0.14
PKGNAME =	fcitx-chewing-$V
REVISION =      0

GH_ACCOUNT =    fcitx
GH_PROJECT =    fcitx5-chewing
GH_TAGNAME =    $V

CATEGORIES =	inputmethods chinese

HOMEPAGE =	https://github.com/fcitx/fcitx5-chewing

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Fcitx5Config Fcitx5Core Fcitx5Utils
WANTLIB += chewing m

MODULES =       devel/kf5
MODQT5_DEPS =	No

BUILD_DEPENDS =		devel/gettext,-tools \
			inputmethods/fcitx \
			devel/iso-codes

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic \
			misc/shared-mime-info

LIB_DEPENDS =		inputmethods/fcitx \
			chinese/libchewing

# ninja: error: unknown target 'test'
NO_TEST =		Yes

.include <bsd.port.mk>
