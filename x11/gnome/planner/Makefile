# $OpenBSD: Makefile,v 1.58 2013/04/03 06:42:28 ajacoutot Exp $

COMMENT=		project management application

# git clone of 75d160197d687c0d3b27dd53ba02d98b2a09d582
GNOME_PROJECT=		planner
GNOME_VERSION=		0.14.6.1
REVISION=		0

CATEGORIES=		productivity

SHARED_LIBS +=  planner-1            0.0      # .0.0

HOMEPAGE=		http://live.gnome.org/Planner

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender art_lgpl_2 atk-1.0 c cairo dbus-1 dbus-glib-1
WANTLIB += expat exslt ffi fontconfig freetype gailutil gcrypt
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnomecanvas-2 gobject-2.0 gpg-error graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz icudata icule icuuc
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm xml2
WANTLIB += xslt z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

RUN_DEPENDS=		misc/shared-mime-info

LIB_DEPENDS=		security/libgcrypt \
			textproc/libxslt \
			x11/gnome/libgnomecanvas

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
MODGCONF2_SCHEMAS_DIR=	planner

CONFIGURE_ARGS= 	--disable-update-mimedb \
			--disable-python \
			--enable-eds=no \
			--enable-eds-backend=no \
			--with-database=no

CONFIGURE_ENV=		UPDATE_DESKTOP_DATABASE="/usr/bin/false"

############################################################
# XXX: Remove the following when updating to a real release.
MASTER_SITES=		http://distfiles.nl/
BUILD_DEPENDS +=	x11/gnome/common \
			${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool \
			textproc/gtk-doc

AUTOMAKE_VERSION =	1.9
AUTOCONF_VERSION =	2.68

do-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		env ${CONFIGURE_ENV} \
		./autogen.sh ${CONFIGURE_ARGS}
############################################################

post-install:
	rm ${PREFIX}/lib/planner/{file-modules,plugins,storage-modules}/*.{a,la}

.include <bsd.port.mk>
