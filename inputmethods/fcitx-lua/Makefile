COMMENT =	Lua support for fcitx5

DISTNAME =	fcitx5-lua-5.0.10
PKGNAME =	${DISTNAME:S/fcitx5/fcitx/}

CATEGORIES =	inputmethods

HOMEPAGE =	https://github.com/fcitx/fcitx5-lua

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

SITES =  	https://download.fcitx-im.org/fcitx5/fcitx5-lua/

WANTLIB += ${COMPILER_LIBCXX} Fcitx5Config Fcitx5Core Fcitx5Utils
WANTLIB += m

MODULES =       devel/kf5
MODQT5_DEPS =	No

BUILD_DEPENDS =		devel/gettext,-tools \
			lang/lua/5.3 \
			devel/iso-codes

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			lang/lua/5.3

LIB_DEPENDS =		inputmethods/fcitx

.include <bsd.port.mk>
