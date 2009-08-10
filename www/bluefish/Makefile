# $OpenBSD: Makefile,v 1.53 2009/08/10 06:34:56 kili Exp $

COMMENT=	HTML editor for experienced web designers

DISTNAME=	bluefish-1.0.7
PKGNAME=	${DISTNAME}p3
CATEGORIES=	www
HOMEPAGE=	http://bluefish.openoffice.nl/

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>

MASTER_SITES=	http://www.bennewitz.com/bluefish/stable/source/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB += bonobo-2 bonobo-activation bonoboui-2 c cairo dbus-1
WANTLIB += expat fontconfig freetype gconf-2 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2
WANTLIB += gnomevfs-2 gobject-2.0 gthread-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png popt pthread pthread-stubs xcb xml2 z

MODULES=	devel/gettext

RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils \
		:shared-mime-info-*:misc/shared-mime-info
BUILD_DEPENDS=	::misc/shared-mime-info
LIB_DEPENDS=	gailutil,gtk-x11-2.0.>=0.14,gdk-x11-2.0.>=0.14,gdk_pixbuf-2.0.>=0.14::x11/gtk+2 \
		pcre::devel/pcre \
		gnomeui-2::x11/gnome/libgnomeui

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-freedesktop_org-menu='${PREFIX}/share/applications/' \
		--disable-update-databases
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_X11=	Yes
USE_GMAKE=	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
