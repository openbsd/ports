# $OpenBSD: Makefile,v 1.4 2009/01/31 15:19:35 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	database widget library with data bound widgets 

GNOME_PROJECT=	libgnomedb
GNOME_VERSION=	3.1.2
SHARED_LIBS +=  gnomedb-3.0          0.0      # .4.0
SHARED_LIBS +=  gnomedb_extra-3.0    0.0      # .4.0
SHARED_LIBS +=  gnomedb_graph-3.0    0.0      # .4.0
SHARED_LIBS +=  gnomedb_extra-3.0    0.0      # .4.0
SHARED_LIBS +=  gnomedb_goo-3.0      0.0      # .4.0

API_VERSION=	3.0

CATEGORIES=	databases

HOMEPAGE=		http://www.gnome-db.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			x11/gnome

WANTLIB=	ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0 \
		c cairo crypto db dbus-1 dbus-glib-1 expat fam fontconfig \
		freetype gailutil gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnomecanvas-2 \
		gnomevfs-2 gobject-2.0 gpg-error gthread-2.0 gtk-x11-2.0 \
		ltdl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png pthread rpcsvc ssl stdc++ util xml2 z

BUILD_DEPENDS=		::x11/gnome/doc-utils
RUN_DEPENDS=		::textproc/rarian
LIB_DEPENDS=		gladeui-1::devel/glade3 \
			goocanvas::graphics/goocanvas \
			cdt,graph,gvc,pathplan::math/graphviz \
			gdasql-3.0,gda-3.0::x11/gnome/libgda

USE_X11=		Yes

DESKTOP_FILES=		Yes

SUBST_VARS=		API_VERSION

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/libgnomedb \
			--disable-schemas-install \
			--disable-scrollkeeper
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
