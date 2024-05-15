COMMENT-main =		native messaging host for Web eID browser extension
COMMENT-chrome =	Chromium extension
COMMENT-firefox =	Firefox extension
CATEGORIES =		security www

V =			2.5.0
DISTNAME =		web-eid_${V}.642-2004
PKGNAME =		web-eid-${V}
PKGNAME-main =		web-eid-native-${V}
WRKDIST =		${WRKDIR}/web-eid
REVISION-main =		1
REVISION-chrome =	0

SITES =			https://github.com/web-eid/web-eid-app/releases/download/v${V}/
EXTRACT_SUFX =		.tar.xz

MULTI_PACKAGES =	-main -chrome -firefox

# MIT
PERMIT_PACKAGE =	Yes

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

HOMEPAGE =		https://web-eid.eu/

# -std=gnu++17
COMPILER =		base-clang ports-gcc

WANTLIB-main += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Network Qt6Svg
WANTLIB-main += Qt6SvgWidgets Qt6Widgets c crypto m pcsclite

MODULES =		devel/cmake \
			x11/qt6

BUILD_DEPENDS =		devel/gtest \
			x11/qt6/qtsvg

LIB_DEPENDS-main =	${MODQT_LIB_DEPENDS} \
			x11/qt6/qtsvg \
			security/pcsc-lite

RUN_DEPENDS-main =	devel/desktop-file-utils \
			x11/gtk+4,-guic

RUN_DEPENDS-chrome =	${FULLPKGPATH-main}
LIB_DEPENDS-chrome =	# empty

RUN_DEPENDS-firefox =	${FULLPKGPATH-main}
LIB_DEPENDS-firefox =	# empty

TEST_IS_INTERACTIVE =	X11

.include <bsd.port.mk>
