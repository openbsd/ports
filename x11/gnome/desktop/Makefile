# $OpenBSD: Makefile,v 1.15 2006/01/09 12:17:01 alek Exp $

COMMENT=		"components for the GNOME desktop"

DISTNAME=		gnome-desktop-2.10.2
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		gnome-desktop-2 4.3
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xext png \
		Xrender art_lgpl_2 atk-1.0.0.0 audiofile bonobo-2 \
		bonobo-activation bonoboui-2 c crypto esd fontconfig \
		freetype gconf-2 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 \
		glib-2.0.0.0 gmodule-2.0.0.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gobject-2.0.0.0 gthread-2.0.0.0 \
		gtk-x11-2.0.0.0 jpeg m pango-1.0.0.0 pangoft2-1.0.0.0 \
		pangocairo-1.0.1000.0 cairo glitz popt pthread ssl xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-desktop/2.10/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:scrollkeeper-*:textproc/scrollkeeper
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			startup-notification-1::devel/startup-notification

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ARGS+=	--with-gnome-distributor="OpenBSD Ports"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
