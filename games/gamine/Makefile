# $OpenBSD: Makefile,v 1.10 2013/09/27 17:49:03 ajacoutot Exp $

COMMENT=	interactive game for young children

DISTNAME=	gamine-1.1
REVISION=	7

CATEGORIES=	games

HOMEPAGE=	http://gnunux.info/projets/gamine/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# DWTFYWTPL
# (DO WHAT THE FUCK YOU WANT TO PUBLIC LICENSE)
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gstreamer-0.10
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs xcb
WANTLIB += xcb-render xcb-shm xml2 z

MASTER_SITES=	${HOMEPAGE}

MODULES=	devel/gettext \
		devel/gconf2

RUN_DEPENDS=	devel/desktop-file-utils \
		multimedia/gstreamer-0.10/plugins-good \
		x11/gtk+2,-guic

LIB_DEPENDS=	multimedia/gstreamer-0.10/core \
		x11/gtk+2

USE_GMAKE=	Yes
ALL_TARGET=	# empty

MODGCONF2_SCHEMAS_DIR= gamine

MAKE_FLAGS=	PREFIX=${PREFIX} CC=${CC} CFLAGS="${CFLAGS}" \
		GCONFTOOL=/usr/bin/true \
		GCONF_SCHEMA_FILE_DIR=${LOCALBASE}/${SCHEMAS_INSTDIR} \
		sysconfdir=${SYSCONFDIR}

FAKE_FLAGS=	PREFIX=${WRKINST}${PREFIX} \
		GCONF_SCHEMA_FILE_DIR=${WRKINST}${PREFIX}/${SCHEMAS_INSTDIR} \
		sysconfdir=${PREFIX}/share/examples/gamine

.include <bsd.port.mk>
