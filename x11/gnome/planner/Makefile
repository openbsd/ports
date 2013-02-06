# $OpenBSD: Makefile,v 1.53 2013/02/06 14:23:07 ajacoutot Exp $

COMMENT=		project management application

GNOME_PROJECT=		planner
GNOME_VERSION=		0.14.6
REVISION=		2

CATEGORIES=		productivity

SHARED_LIBS +=  planner-1            0.0      # .0.0

HOMEPAGE=		http://live.gnome.org/Planner

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
WANTLIB += vorbisfile xcb xcb-render xcb-shm xml2 xslt z ffi stdc++
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

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGCONF2_SCHEMAS_DIR=	planner

CONFIGURE_ARGS+= 	--disable-update-mimedb \
			--enable-python \
			--enable-python-plugin=yes \
			--enable-eds=no \
			--enable-eds-backend=no \
			--with-database=no

CONFIGURE_ENV=		UPDATE_DESKTOP_DATABASE="/usr/bin/false"

post-install:
	rm ${PREFIX}/lib/planner/{file-modules,plugins,storage-modules}/*.{a,la}
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.{a,la}

.include <bsd.port.mk>
