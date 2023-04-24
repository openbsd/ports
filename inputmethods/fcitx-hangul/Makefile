COMMENT =	Hangul wrapper for fcitx5

V =		5.0.11
PKGNAME =	fcitx-hangul-$V
REVISION =      0

GH_ACCOUNT =    fcitx
GH_PROJECT =    fcitx5-hangul
GH_TAGNAME =    $V

CATEGORIES =	inputmethods korean

HOMEPAGE =	https://github.com/fcitx/fcitx5-hangul

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# LGPLv2.1 or later
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Fcitx5Config Fcitx5Core Fcitx5Utils
WANTLIB += hangul iconv intl m

MODULES =       devel/kf5
MODQT5_DEPS =	No

BUILD_DEPENDS =		devel/gettext,-tools \
			inputmethods/fcitx \
			devel/iso-codes

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic \
			misc/shared-mime-info

LIB_DEPENDS =		inputmethods/fcitx \
			korean/libhangul

.include <bsd.port.mk>
