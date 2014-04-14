# $OpenBSD: Makefile,v 1.72 2014/04/14 19:52:44 matthieu Exp $

COMMENT =	small, fast & usable window manager

V =		3.5.2
REVISION =	0
DISTNAME =	openbox-${V}
SHARED_LIBS +=	obrender	11.0	# 29.1
SHARED_LIBS +=	obt		1.0	# 2.1

CATEGORIES =	x11

HOMEPAGE =	http://openbox.org/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE Imlib2 SM X11 X11-xcb Xau Xcursor Xext Xfixes Xft
WANTLIB += Xinerama Xrandr Xrender c cairo croco-0.6 expat ffi
WANTLIB += fontconfig freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 harfbuzz
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangoxft-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs rsvg-2
WANTLIB += startup-notification-1 xcb xcb-util xcb-render xcb-shm
WANTLIB += xml2 z

MASTER_SITES =	${HOMEPAGE}dist/openbox/

MODULES =	devel/gettext \
		lang/python

RUN_DEPENDS =	devel/py-xdg \
		devel/desktop-file-utils
LIB_DEPENDS +=	devel/pango \
		devel/startup-notification \
		graphics/imlib2 \
		textproc/libxml \
		x11/gnome/librsvg

FAKE_FLAGS =	sysconfdir="${PREFIX}/share/examples/openbox" \
		rcdir="${PREFIX}/share/examples/openbox" \
		mkdir_p="$${SHELL} ${WRKSRC}/install-sh -d"

API_V = 	${V:R}
SUBST_VARS =	API_V

USE_GMAKE =	Yes
MODPY_RUNDEP =	No
MODPY_ADJ_FILES =data/autostart/openbox-xdg-autostart

CONFIGURE_STYLE = gnu
CONFIGURE_ARGS = ${CONFIGURE_SHARED} \
		--docdir=${PREFIX}/share/examples/openbox
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/data/autostart/autostart.in

.include <bsd.port.mk>
