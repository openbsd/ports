# $OpenBSD: Makefile,v 1.6 2003/08/15 08:49:33 wilfried Exp $

COMMENT=		"GNOME web browser based on gecko"

V=			1.2.11
DISTNAME=		galeon-${V}
CATEGORIES=		www
MOZ=			1.4

HOMEPAGE=		http://galeon.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=galeon/}

MODULES=		gettext

BUILD_DEPENDS=		:mozilla-${MOZ}:www/mozilla \
			:mozilla-devel-${MOZ}:www/mozilla,-devel \
			:scrollkeeper->=0.3.12:textproc/scrollkeeper
RUN_DEPENDS=		:mozilla-${MOZ}:www/mozilla \
			:scrollkeeper->=0.3.12:textproc/scrollkeeper
LIB_DEPENDS=		art_lgpl,gnomesupport,gnomeui::x11/gnome/libs \
			gdk_pixbuf::graphics/gdk-pixbuf \
			glade,glade-gnome::devel/libglade,gnome \
			gnomevfs::x11/gnome/vfs

#			gtkembedmoz,gtksuperwin,nspr4,plc4,plds4,xpcom::www/mozilla

CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

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
