# $OpenBSD: Makefile,v 1.12 2004/12/15 13:57:56 alek Exp $

COMMENT=		"GNOME control center"

VERSION=		2.8.1
DISTNAME=		control-center-${VERSION}
PKGNAME=		control-center2-${VERSION}
CATEGORIES=		x11 x11/gnome
HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/control-center/2.8/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

LIB_DEPENDS=		xklavier::x11/gnome/libxklavier \
			metacity-private::x11/gnome/metacity \
			nautilus::x11/gnome/nautilus
BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xcursor Xext Xft \
		Xinerama Xrandr Xrender Xxf86misc art_lgpl_2 atk-1.0.0.0 \
		audiofile bonobo-2 bonobo-activation bonoboui-2 c crypto \
		eel-2 esd fontconfig freetype gailutil gconf-2 \
		gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glade-2.0.0.0 \
		glib-2.0.0.0 gmodule-2.0.0.0 gnome-2 gnome-desktop-2 \
		gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2 \
		gobject-2.0.0.0 gthread-2.0.0.0 gtk-x11-2.0.0.0 jpeg m \
		pango-1.0.0.0 pangoft2-1.0.0.0 pangox-1.0.0.0 \
		pangoxft-1.0.0.0 popt pthread ssl startup-notification-1 \
		xkbfile xml2 z

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu old
CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/control-center2
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/controlcenter2; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/gnome/* ${PREFIX}/share/examples/controlcenter2/

.include <bsd.port.mk>
