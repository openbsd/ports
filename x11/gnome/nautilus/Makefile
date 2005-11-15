# $OpenBSD: Makefile,v 1.16 2005/11/15 20:12:30 wilfried Exp $

COMMENT=		"GNOME shell and file manager"

VERSION=		2.10.1
DISTNAME=		nautilus-${VERSION}
PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org/projects/nautilus/

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/nautilus/2.10/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xext \
		Xrender art_lgpl_2 atk-1.0.0.0 audiofile bonobo-2 \
		bonobo-activation bonoboui-2 bz2 c \
		crypto esd fontconfig freetype gailutil gconf-2 \
		gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glade-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gnome-2 gnome-keyring gnomecanvas-2 gnomeui-2 \
		gnomevfs-2 gobject-2.0.0.0 gsf-1 gthread-2.0.0.0 \
		gtk-x11-2.0.0.0 jpeg m pango-1.0.0.0 pangoft2-1.0.0.0 \
		popt pthread ssl cairo glitz pangocairo-1.0.0.0 png \
		startup-notification-1 gnome-menu xml2 z

MODULES=		devel/gettext

BUILD_DEPENDS= 		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=		::devel/desktop-file-utils
LIB_DEPENDS=		eel-2.12.1::x11/gnome/eel \
			gnome-desktop-2.0::x11/gnome/desktop \
			rsvg-2.2::x11/gnome/librsvg
RUN_DEPENDS=		:gnome-icon-theme-*:x11/gnome/icon-theme

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu old
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/nautilus
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${WRKBUILD}/libnautilus/.libs \
				-L${WRKBUILD}/libnautilus-adapter/.libs \
				-L${WRKBUILD}/libnautilus-private/.libs \
				-L${LOCALBASE}/lib"

.include <bsd.port.mk>
