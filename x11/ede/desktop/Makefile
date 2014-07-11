# $OpenBSD: Makefile,v 1.5 2014/07/11 21:39:04 pascal Exp $

COMMENT =		Equinox desktop environment

DISTNAME =		ede-${V}

WANTLIB += X11 Xau Xdmcp Xext Xft Xinerama Xpm c crypto
WANTLIB += curl dbus-1 edelib edelib_dbus edelib_gui fltk fltk_images
WANTLIB += fontconfig idn jpeg m png pthread ssl startup-notification-1
WANTLIB += stdc++ xkbfile z

MODULES =		lang/python
BUILD_DEPENDS =		devel/jam \
			misc/shared-mime-info
LIB_DEPENDS =		devel/startup-notification \
			graphics/jpeg \
			graphics/png \
			devel/libidn \
			net/curl \
			x11/ede/lib
RUN_DEPENDS =		devel/desktop-file-utils \
			misc/shared-mime-info \
			x11/gtk+2,-guic \
			x11/pekwm

FAKE_FLAGS =		sysconfdir="${TRUEPREFIX}/share/examples/ede"

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}
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
