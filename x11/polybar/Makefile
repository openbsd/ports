# $OpenBSD: Makefile,v 1.3 2019/09/20 09:21:05 jasper Exp $

COMMENT =	fast and easy-to-use status bar
V =		3.4.0
DISTNAME =	polybar-$V
REVISION =	0
CATEGORIES =	x11

HOMEPAGE =	https://polybar.github.io/
MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} lib/inotify/inotify
WANTLIB += c cairo curl fontconfig freetype intl jsoncpp m mpdclient
WANTLIB += pulse xcb xcb-composite xcb-cursor xcb-ewmh xcb-icccm
WANTLIB += xcb-image xcb-randr xcb-util xcb-xkb xcb-xrm z

MASTER_SITES =	https://github.com/polybar/polybar/releases/download/$V/
EXTRACT_SUFX =	.tar

# C++14
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python

BUILD_DEPENDS =	${RUN_DEPENDS} \
		textproc/py-sphinx

LIB_DEPENDS =	audio/libmpdclient \
		audio/pulseaudio \
		devel/jsoncpp \
		devel/libinotify \
		graphics/cairo \
		net/curl

RUN_DEPENDS =	x11/py-xcbgen \
		fonts/siji \
		fonts/unifont

CONFIGURE_ARGS =	-DENABLE_CCACHE=OFF \
			-DCMAKE_EXE_LINKER_FLAGS="-L${LOCALBASE}/lib -lintl -L${LOCALBASE}/lib/inotify -linotify -Wl,-rpath,${LOCALBASE}/lib/inotify"

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/polybar

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib/i3ipcpp/CMakeLists.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/polybar
	${INSTALL_DATA} ${WRKSRC}/config ${PREFIX}/share/examples/polybar

.include <bsd.port.mk>
