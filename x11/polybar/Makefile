# $OpenBSD: Makefile,v 1.9 2020/05/15 08:07:55 jasper Exp $

COMMENT =	fast and easy-to-use status bar
V =		3.4.3
DISTNAME =	polybar-$V
CATEGORIES =	x11

HOMEPAGE =	https://polybar.github.io/
MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} lib/inotify/inotify
WANTLIB += c cairo curl fontconfig freetype intl m mpdclient
WANTLIB += pulse xcb xcb-composite xcb-cursor xcb-ewmh xcb-icccm
WANTLIB += xcb-image xcb-randr xcb-util xcb-xkb xcb-xrm z

MASTER_SITES =	https://github.com/polybar/polybar/releases/download/$V/
EXTRACT_SUFX =	.tar

# C++14
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

DEBUG_PACKAGES =${BUILD_PACKAGES}
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =	${RUN_DEPENDS} \
		textproc/py-sphinx${MODPY_FLAVOR}

LIB_DEPENDS =	audio/libmpdclient \
		audio/pulseaudio \
		devel/libinotify \
		graphics/cairo \
		net/curl

RUN_DEPENDS =	x11/py-xcbgen${MODPY_FLAVOR} \
		fonts/siji \
		fonts/unifont

CONFIGURE_ARGS =	-DENABLE_CCACHE=OFF \
			-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib -lintl -L${LOCALBASE}/lib/inotify -linotify -Wl,-rpath,${LOCALBASE}/lib/inotify" \
			-DENABLE_I3=OFF

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/polybar

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cmake/02-opts.cmake \
		${WRKSRC}/doc/CMakeLists.txt \
		${WRKSRC}/lib/i3ipcpp/CMakeLists.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/polybar
	${INSTALL_DATA} ${WRKSRC}/config ${PREFIX}/share/examples/polybar

.include <bsd.port.mk>
