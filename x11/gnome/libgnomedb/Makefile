# $OpenBSD: Makefile,v 1.8 2009/02/11 15:47:50 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	database widget library with data bound widgets 

GNOME_PROJECT=	libgnomedb
GNOME_VERSION=	3.0.0
PKGNAME=	${DISTNAME}p1v0

SHARED_LIBS +=  gnomedb-3.0          1.0      # .4.0
SHARED_LIBS +=  gnomedb_extra-3.0    1.0      # .4.0
SHARED_LIBS +=  gnomedb_graph-3.0    1.0      # .4.0

API_VERSION=	3.0

CATEGORIES=	databases

HOMEPAGE=		http://www.gnome-db.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB += c cairo crypto dbus-1 dbus-glib-1 expat fam fontconfig
WANTLIB += freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnomecanvas-2
WANTLIB += gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread rpcsvc stdc++
WANTLIB += xml2 z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		::x11/gnome/doc-utils
RUN_DEPENDS=		::textproc/rarian
LIB_DEPENDS=		gladeui-1::devel/glade3 \
			gdasql-3.0,gda-3.0,gda-report-3.0::x11/gnome/libgda

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
