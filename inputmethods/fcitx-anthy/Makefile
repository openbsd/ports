COMMENT =	anthy wrapper for fcitx5

V =		5.0.14
PKGNAME =	fcitx-anthy-$V
REVISION =      0

GH_ACCOUNT =    fcitx
GH_PROJECT =    fcitx5-anthy
GH_TAGNAME =    $V

CATEGORIES =	inputmethods japanese

HOMEPAGE =	https://github.com/fcitx/fcitx5-anthy

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

WANTLIB += ${COMPILER_LIBCXX} Fcitx5Config Fcitx5Core Fcitx5Utils
WANTLIB += anthy anthydic m

# LGPL-2.1+
PERMIT_PACKAGE=	Yes

MODULES =       devel/kf5
MODQT5_DEPS =	No

BUILD_DEPENDS =		devel/gettext,-tools \
			inputmethods/fcitx \
			devel/iso-codes

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+4,-guic

LIB_DEPENDS =		inputmethods/fcitx \
			inputmethods/anthy

# ninja: error: unknown target 'test'
NO_TEST =		Yes

.include <bsd.port.mk>
