COMMENT =	implementation of xim protocol in xcb

DISTNAME =	xcb-imdkit-1.0.5

SHARED_LIBS +=  xcb-imdkit		1.0 # 1.0

CATEGORIES =	inputmethods

HOMEPAGE =	https://github.com/fcitx/xcb-imdkit

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# LGPL 2.1
PERMIT_PACKAGE=	Yes

WANTLIB += xcb xcb-util

SITES =		https://download.fcitx-im.org/fcitx5/xcb-imdkit/
EXTRACT_SUFX = .tar.xz

# C11
COMPILER =		base-clang ports-clang ports-gcc
COMPILER_LANGS =	c

MODULES =		devel/kf5
MODQT5_DEPS =		No

BUILD_DEPENDS =		devel/uthash

CFLAGS +=		-I${LOCALBASE}/include

.include <bsd.port.mk>
