# $OpenBSD: Makefile,v 1.14 2004/12/15 13:57:57 alek Exp $

COMMENT=		"GNOME panel"

DISTNAME=		gnome-panel-2.8.2
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-panel/2.8/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 XRes Xcursor Xext Xft \
		Xinerama Xrender art_lgpl_2 atk-1.0.0.0 audiofile bonobo-2 \
		bonobo-activation bonoboui-2 c crypto esd fontconfig freetype \
		gconf-2 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glade-2.0.0.0 \
		glib-2.0.0.0 gmodule-2.0.0.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0.0.0 \
		gthread-2.0.0.0 gtk-x11-2.0.0.0 jpeg m pango-1.0.0.0 \
		pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 png popt \
		pthread ssl startup-notification-1 xml2 z

MODULES=		devel/gettext

BUILD_DEPENDS= 		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:scrollkeeper->=0.3.12:textproc/scrollkeeper
RUN_DEPENDS=		:scrollkeeper->=0.3.12:textproc/scrollkeeper \
			:control-center2-*:x11/gnome/controlcenter2
LIB_DEPENDS= 		gnome-desktop-2.0::x11/gnome/desktop \
			wnck-1.4::devel/libwnck

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	--disable-gtk-doc
CONFIGURE_ARGS+= 	--disable-eds
CONFIGURE_ARGS+= 	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-panel
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
