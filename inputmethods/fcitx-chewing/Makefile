COMMENT =	chewing wrapper for fcitx5

DISTNAME =	fcitx5-chewing-5.1.6
PKGNAME =	${DISTNAME:S/fcitx5/fcitx/}
CATEGORIES =	inputmethods chinese

HOMEPAGE =	https://github.com/fcitx/fcitx5-chewing

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Fcitx5Config Fcitx5Core Fcitx5Utils
WANTLIB += chewing m

SITES =		https://download.fcitx-im.org/fcitx5/fcitx5-chewing/
EXTRACT_SUFX =	.tar.zst

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

.include <bsd.port.mk>
