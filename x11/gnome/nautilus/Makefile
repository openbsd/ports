# $OpenBSD: Makefile,v 1.13 2004/12/15 13:57:57 alek Exp $

COMMENT=		"GNOME shell and file manager"

DISTNAME=		nautilus-2.8.2
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org/projects/nautilus/
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/nautilus/2.8/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xcursor Xext Xft Xinerama \
		Xrender art_lgpl_2 atk-1.0.0.0 audiofile bonobo-2 \
		bonobo-activation bonoboui-2 bz2 c cdda_interface \
		cdda_paranoia crypto esd fontconfig freetype gailutil gconf-2 \
		gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glade-2.0.0.0 glib-2.0.0.0 \
		gmodule-2.0.0.0 gnome-2 gnome-keyring gnomecanvas-2 gnomeui-2 \
		gnomevfs-2 gobject-2.0.0.0 gsf-1 gthread-2.0.0.0 \
		gtk-x11-2.0.0.0 jpeg m pango-1.0.0.0 pangoft2-1.0.0.0 \
		pangox-1.0.0.0 pangoxft-1.0.0.0 popt pthread ssl \
		startup-notification-1 xml2 z

MODULES=		devel/gettext

BUILD_DEPENDS= 		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		eel-2.10.2::x11/gnome/eel \
			gnome-desktop-2.0::x11/gnome/desktop \
			rsvg-2.2::x11/gnome/librsvg
RUN_DEPENDS=		:gnome-icon-theme-*:x11/gnome/icon-theme

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu old
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/nautilus
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -DWEB_NAVIGATION_ENABLED" \
			LDFLAGS="-L${WRKBUILD}/libnautilus/.libs \
				-L${WRKBUILD}/libnautilus-adapter/.libs \
				-L${WRKBUILD}/libnautilus-private/.libs \
				-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nautilus; 

.include <bsd.port.mk>
