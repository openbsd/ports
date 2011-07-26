# $OpenBSD: Makefile,v 1.41 2011/07/26 15:36:27 ajacoutot Exp $

COMMENT=		project management application

GNOME_PROJECT=		planner
GNOME_VERSION=		0.14.5
REVISION=		0

CATEGORIES=		productivity

SHARED_LIBS +=  planner-1            0.0      # .0.0

HOMEPAGE=		http://live.gnome.org/Planner

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.xz

WANTLIB += GL ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xxf86vm art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 c cairo canberra crypto dbus-1 dbus-glib-1
WANTLIB += drm expat exslt fontconfig freetype gailutil gcrypt
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 gnomeui-2
WANTLIB += gnomevfs-2 gobject-2.0 gpg-error gthread-2.0 gtk-x11-2.0
WANTLIB += ltdl m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png popt pthread pthread-stubs ssl util vorbis
WANTLIB += vorbisfile xcb xcb-render xcb-shm xml2 xslt z
WANTLIB += ${MODPY_WANTLIB}

MODULES=		devel/gettext \
			lang/python \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		x11/py-gtk2 \
			misc/shared-mime-info>=0.21

LIB_DEPENDS=		x11/gnome/libbonoboui \
			x11/gnome/libgnomeui \
			${MODPY_LIB_DEPENDS}

MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	planner

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--disable-update-mimedb \
			--enable-gtk-doc=no \
			--enable-python \
			--enable-python-plugin=yes \
			--enable-eds=no \
			--enable-eds-backend=no \
			--with-database=no

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			UPDATE_DESKTOP_DATABASE="/usr/bin/false"

.include <bsd.port.mk>
