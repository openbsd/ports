COMMENT =	anthy wrapper for fcitx5

DISTNAME =	fcitx5-anthy-5.1.5
PKGNAME =	${DISTNAME:S/fcitx5/fcitx/}

CATEGORIES =	inputmethods japanese

HOMEPAGE =	https://github.com/fcitx/fcitx5-anthy

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

WANTLIB += ${COMPILER_LIBCXX} Fcitx5Config Fcitx5Core Fcitx5Utils
WANTLIB += anthy anthydic m

# LGPL-2.1+
PERMIT_PACKAGE=	Yes

SITES =		https://download.fcitx-im.org/fcitx5/fcitx5-anthy/
EXTRACT_SUFX =	.tar.zst

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
