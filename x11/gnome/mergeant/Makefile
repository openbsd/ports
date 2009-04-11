# $OpenBSD: Makefile,v 1.6 2009/04/11 10:46:43 ajacoutot Exp $

COMMENT=		database administration GUI

GNOME_PROJECT=		mergeant
GNOME_VERSION=		0.67
PKGNAME=		${DISTNAME}p4

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

RUN_DEPENDS=		:shared-mime-info->=0.21:misc/shared-mime-info
LIB_DEPENDS=		gnomedb-3.0,gnomedb_extra-3.0,gnomedb_graph-3.0::x11/gnome/libgnomedb

USE_X11=		Yes
DESKTOP_FILES=		Yes

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-update-mimedb
CONFIGURE_ENV+= 	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			GMSGFMT="${LOCALBASE}/bin/msgfmt"

# XXX disable help files as db2html is needed and we end-up
# with empty or incomplete directories
pre-configure:
	 @ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-config
post-install:
	rm -rf ${PREFIX}/share/gnome/
	rm -rf ${PREFIX}/share/omf/

.include <bsd.port.mk>
