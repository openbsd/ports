# $OpenBSD: Makefile,v 1.18 2005/03/13 05:06:18 kurt Exp $

BROKEN="requires upgrade to sync with mozilla"

COMMENT=		"GNOME web browser based on gecko"

V=			1.2.13
DISTNAME=		galeon-${V}
PKGNAME=		${DISTNAME}p1
CATEGORIES=		www
MOZ=			1.7.5

HOMEPAGE=		http://galeon.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE IIOP ORBit ORBitCosNaming ORBitutil SM X11 Xext \
			Xi Xinerama audiofile c esd gconf-1 gconf-gtk-1 gdk \
			gdk_imlib glib gmodule gnome gthread gtk \
			jpeg m oaf png popt \
			pthread stdc++ tiff ungif wrap xml z \

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=galeon/}

MODULES=		devel/gettext gcc3
MODGCC3_ARCHES=		alpha
MODGCC3_LANGS=		C++

BUILD_DEPENDS=		:mozilla-${MOZ}-!gtk2:www/mozilla \
			:mozilla-devel-${MOZ}-!gtk2:www/mozilla,-devel \
			:scrollkeeper->=0.3.12:textproc/scrollkeeper
RUN_DEPENDS=		:scrollkeeper->=0.3.12:textproc/scrollkeeper
LIB_DEPENDS=		art_lgpl,gnomesupport,gnomeui::x11/gnome/libs \
			gdk_pixbuf::graphics/gdk-pixbuf \
			glade,glade-gnome:libglade-*-gnome:devel/libglade,gnome \
			gnomevfs::x11/gnome/vfs
LIB_DEPENDS+= 		mozilla/gtkembedmoz,mozilla/gtksuperwin,mozilla/xpcom,mozilla/nspr4,mozilla/plc4,mozilla/plds4:mozilla-${MOZ}-!gtk2:www/mozilla

CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			MOZILLA_CONFIG=/usr/local/mozilla/mozilla-config

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-werror \
			--disable-scrollkeeper-update \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/galeon \
			--with-mozilla-snapshot=${MOZ} \
			--with-mozilla-home=${LOCALBASE}/mozilla \
			--with-mozilla-libs=${LOCALBASE}/mozilla/lib \
			--with-mozilla-includes=${LOCALBASE}/mozilla/include

WRKDIST=		${WRKDIR}/galeon-${V}/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/schemas/galeon
	${INSTALL_DATA} ${WRKSRC}/galeon.schemas ${PREFIX}/share/schemas/galeon/

.include <bsd.port.mk>
