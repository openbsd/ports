# $OpenBSD: Makefile,v 1.2 2003/05/24 11:08:17 wilfried Exp $

COMMENT=		"GNOME web browser based on gecko"

V=			1.2.10
DISTNAME=		galeon-${V}a
CATEGORIES=		www
MOZ=			1.4b

HOMEPAGE=		http://galeon.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=galeon/}

MODULE=			iconv \
	  		gettext
BUILD_DEPENDS=		:mozilla-${MOZ}:www/mozilla \
			:mozilla-devel-${MOZ}:www/mozilla,-devel \
			:scrollkeeper-*:textproc/scrollkeeper
RUN_DEPENDS=		:mozilla-${MOZ}:www/mozilla
LIB_DEPENDS=		audiofile::devel/libaudiofile \
			esd::audio/esound \
			tiff::graphics/tiff \
			ungif::graphics/libungif \
			gthread::devel/glib \
			gdk_imlib::graphics/imlib \
			gdk_pixbuf::graphics/gdk-pixbuf \
			gconf-1,gconf-gtk-1::devel/gconf \
			glade,glade-gnome::devel/libglade,gnome \
			IIOP,ORBit,ORBitCosNaming,ORBitutil::devel/ORBit \
			art_lgpl,gnome,gnomesupport,gnomeui::x11/gnome/libs \
			gnomevfs::x11/gnome/vfs \
			oaf::x11/gnome/oaf \
			xml::textproc/libxml1

CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-werror \
			--disable-scrollkeeper-update \
			--with-mozilla-snapshot=${MOZ} \
			--with-mozilla-home=${LOCALBASE}/mozilla \
			--with-mozilla-libs=${LOCALBASE}/mozilla/lib \
			--with-mozilla-includes=${LOCALBASE}/mozilla/include

WRKDIST=		${WRKDIR}/galeon-${V}/

.include <bsd.port.mk>
