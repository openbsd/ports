# $OpenBSD: Makefile,v 1.13 2016/11/04 11:35:21 sthen Exp $

COMMENT =		Equinox desktop environment

DISTNAME =		ede-${V}
REVISION =		6

WANTLIB += X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xinerama Xpm c crypto
WANTLIB += curl dbus-1 edelib edelib_dbus edelib_gui fltk fltk_images
WANTLIB += fontconfig jpeg m nghttp2 png pthread ssl
WANTLIB += startup-notification-1 stdc++ xkbfile z

MODULES =		lang/python
BUILD_DEPENDS =		devel/jam \
			misc/shared-mime-info
LIB_DEPENDS =		devel/startup-notification \
			graphics/jpeg \
			graphics/png \
			net/curl \
			x11/ede/lib
RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+3,-guic \
			x11/pekwm

FAKE_FLAGS =		sysconfdir="${TRUEPREFIX}/share/examples/ede"

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
			PTHREAD_LIBS="-pthread" PTHREAD_CFLAGS="-pthread" \
			PYTHON=python${MODPY_VERSION}

NO_TEST =		Yes

MODPY_ADJ_FILES =	doc/asciidoc/asciidoc.py

pre-configure:
	${SUBST_CMD} ${WRKSRC}/ede-keyboard-conf/ede-keyboard-conf.cpp

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} jam -d x

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${ALL_FAKE_FLAGS} \
		DESTDIR="${WRKINST}" jam -d x install

.include <bsd.port.mk>
