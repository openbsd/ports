COMMENT =	anthy wrapper for fcitx5

V =		5.0.10
PKGNAME =	fcitx5-anthy-$V

GH_ACCOUNT =    fcitx
GH_PROJECT =    fcitx5-anthy
GH_TAGNAME =    $V
EXTRACT_SUFX =	.tar.gz

CATEGORIES =	inputmethods japanese

HOMEPAGE =	https://github.com/fcitx/fcitx5-anthy

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

WANTLIB += ${COMPILER_LIBCXX} Fcitx5Config Fcitx5Core Fcitx5Utils
WANTLIB += anthy anthydic m

# LGPL-2.1+
PERMIT_PACKAGE=	Yes

COMPILER =      base-clang ports-clang ports-gcc

MODULES =       devel/kf5
MODQT5_DEPS =	No

BUILD_DEPENDS =		devel/gettext,-tools \
			inputmethods/fcitx5 \
			devel/iso-codes

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic

LIB_DEPENDS =		inputmethods/fcitx5 \
			inputmethods/anthy

# ninja: error: unknown target 'test'
NO_TEST =		Yes

.include <bsd.port.mk>
