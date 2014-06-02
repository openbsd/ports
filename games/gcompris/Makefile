# $OpenBSD: Makefile,v 1.58 2014/06/02 12:31:44 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	educational game for children

DISTNAME=	gcompris-14.05
EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	games education

HOMEPAGE=	http://gcompris.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
# SIL Open Font License (OFL)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo croco-0.6 expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gstreamer-0.10
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += rsvg-2 sqlite3 util xcb xcb-render xcb-shm xml2 z
WANTLIB += ${MODPY_WANTLIB}

MASTER_SITES=	http://gcompris.net/download/

MODULES=	devel/gettext \
		lang/python \
		textproc/intltool

BUILD_DEPENDS=	textproc/texi2html \
		x11/py-gtk2 \
		games/gnuchess \
		archivers/gtar

LIB_DEPENDS=	${MODPY_LIB_DEPENDS} \
		gstreamer->=0.10,<0.11:multimedia/gstreamer-0.10/core \
		x11/gnome/librsvg \
		x11/gtk+2

RUN_DEPENDS=	games/gnuchess \
		databases/py-sqlite \
		x11/py-gtk2 \
		games/tuxpaint \
		cad/gnucap \
		devel/desktop-file-utils \
		multimedia/gstreamer-0.10/plugins-base

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-py-build-only \
		--with-python=${MODPY_BIN}

# don't install under share/gnome/help/, there is no yelp (xml) file
FAKE_FLAGS=	gcompris_helpdir=${PREFIX}/share/doc/gcompris/html

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/chess_computer-activity/chess.c \
		${WRKSRC}/src/electric-activity/electric.py

post-install:
	rm ${PREFIX}/lib/gcompris/*.{a,la}
	find ${PREFIX}/share/gcompris -type f -perm 755 -exec chmod 644 {} \;
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/gcompris

.include <bsd.port.mk>
