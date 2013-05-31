# $OpenBSD: Makefile,v 1.70 2013/05/31 15:35:14 ajacoutot Exp $

COMMENT =	small, fast & usable window manager

V =		3.5.0
DISTNAME =	openbox-${V}
REVISION =	3
SHARED_LIBS +=  obt                  0.0      # 0.1
SHARED_LIBS +=  obrender             10.0      # 27.1

CATEGORIES =	x11

HOMEPAGE =	http://openbox.org/

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE Imlib2 SM X11 X11-xcb Xau Xcursor Xext Xfixes Xft
WANTLIB += Xinerama Xrandr Xrender c expat ffi fontconfig freetype
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 harfbuzz
WANTLIB += m pango-1.0 pangoft2-1.0 pangoxft-1.0
WANTLIB += pcre pthread startup-notification-1 xcb xcb-aux xml2
WANTLIB += z

MASTER_SITES =	${HOMEPAGE}dist/openbox/

MODULES =	devel/gettext \
		lang/python

RUN_DEPENDS =	devel/py-xdg \
		devel/desktop-file-utils
LIB_DEPENDS +=	devel/pango \
		devel/startup-notification \
		graphics/imlib2 \
		textproc/libxml

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
