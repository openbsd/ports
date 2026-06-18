COMMENT =	Hangul wrapper for fcitx5

DISTNAME =	fcitx5-hangul-5.1.5
PKGNAME =	${DISTNAME:S/fcitx5/fcitx/}
REVISION =	2

CATEGORIES =	inputmethods korean

HOMEPAGE =	https://github.com/fcitx/fcitx5-hangul

SITES =		https://download.fcitx-im.org/fcitx5/fcitx5-hangul/
EXTRACT_SUFX =		.tar.zst

# LGPLv2.1 or later
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Fcitx5Config Fcitx5Core Fcitx5Utils
WANTLIB += hangul iconv intl m

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/kf6/extra-cmake-modules \
			devel/gettext,-tools \
			inputmethods/fcitx \
			devel/iso-codes

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic \
			misc/shared-mime-info

LIB_DEPENDS =		inputmethods/fcitx \
			korean/libhangul

.include <bsd.port.mk>
