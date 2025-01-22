COMMENT =	m17n wrapper for fcitx5

DISTNAME =	fcitx5-m17n-5.1.2
PKGNAME =	${DISTNAME:S/fcitx5/fcitx/}

CATEGORIES =	inputmethods

HOMEPAGE =	https://github.com/fcitx/fcitx5-m17n

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

SITES =		https://download.fcitx-im.org/fcitx5/fcitx5-m17n/
EXTRACT_SUFX =	.tar.zst

# LGPLv2.1 or later
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Fcitx5Config Fcitx5Core Fcitx5Utils
WANTLIB += m m17n m17n-core m17n-gui

MODULES =       devel/kf5
MODQT5_DEPS =	No

BUILD_DEPENDS =		devel/gettext,-tools \
			inputmethods/fcitx \
			devel/fmt \
			devel/iso-codes

RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info

LIB_DEPENDS =		inputmethods/fcitx \
			misc/m17n/lib

.include <bsd.port.mk>
