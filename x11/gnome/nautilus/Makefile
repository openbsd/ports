# $OpenBSD: Makefile,v 1.21 2006/09/18 12:19:40 espie Exp $

COMMENT=		"GNOME shell and file manager"

VERSION=		2.10.1
DISTNAME=		nautilus-${VERSION}
PKGNAME=		${DISTNAME}p2
SHARED_LIBS=		nautilus-extension	1.0 \
			nautilus-private	2.0
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
		Xrender art_lgpl_2 atk-1.0 audiofile bonobo-2 \
		bonobo-activation bonoboui-2 bz2 c \
		crypto esd fontconfig freetype gailutil gconf-2 \
		gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 glib-2.0 \
		gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 gnomeui-2 \
		gnomevfs-2 gobject-2.0 gsf-1 gthread-2.0 \
		gtk-x11-2.0 jpeg m pango-1.0 pangoft2-1.0 \
		popt pthread ssl pangocairo-1.0 cairo glitz png \
		startup-notification-1 gnome-menu xml2 z

MODULES=		devel/gettext

BUILD_DEPENDS= 		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=		::devel/desktop-file-utils
LIB_DEPENDS=		eel-2.>=12.1::x11/gnome/eel \
			gnome-desktop-2::x11/gnome/desktop \
			rsvg-2.>=2::x11/gnome/librsvg
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
