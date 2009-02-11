# $OpenBSD: Makefile,v 1.2 2009/02/11 15:23:35 ajacoutot Exp $

COMMENT=		database administration GUI

GNOME_PROJECT=		mergeant
GNOME_VERSION=		0.67
PKGNAME=		${DISTNAME}p0

CATEGORIES+=		databases

HOMEPAGE=		http://www.gnome-db.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB += c cairo dbus-1 dbus-glib-1 expat fam fontconfig freetype
WANTLIB += gailutil gconf-2 gda-3.0 gda-report-3.0 gdasql-3.0
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gnomecanvas-2 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread rpcsvc stdc++ xml2 z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		::textproc/rarian
RUN_DEPENDS=		:shared-mime-info->=0.21:misc/shared-mime-info \
			::textproc/rarian
LIB_DEPENDS=		gnomedb-3.0,gnomedb_extra-3.0,gnomedb_graph-3.0::x11/gnome/libgnomedb

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-update-mimedb
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			GMSGFMT="${LOCALBASE}/bin/msgfmt"


.include <bsd.port.mk>
