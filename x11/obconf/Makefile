# $OpenBSD: Makefile,v 1.15 2009/01/23 16:31:26 ajacoutot Exp $

COMMENT=	configuration utility for openbox

DISTNAME=	obconf-2.0.3
PKGNAME=	${DISTNAME}p1
CATEGORIES=	x11

HOMEPAGE=	http://icculus.org/openbox/index.php/Obconf

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://icculus.org/openbox/obconf/

WANTLIB=	ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xi \
		Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pangoxft-1.0 pixman-1 png xml2 z Xcomposite Xdamage

MODULES=	devel/gettext
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		glade-2.0.>=0.1::devel/libglade2 \
		startup-notification-1::devel/startup-notification \
		obparser.>=7,obrender.>=7::x11/openbox
RUN_DEPENDS=	::archivers/gtar \
		:desktop-file-utils-*:devel/desktop-file-utils \
		:shared-mime-info->=0.21:misc/shared-mime-info

USE_X11=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
