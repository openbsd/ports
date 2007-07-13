# $OpenBSD: Makefile,v 1.8 2007/07/13 08:54:48 ajacoutot Exp $

COMMENT=	configuration utility for openbox

DISTNAME=	obconf-2.0.1
PKGNAME=	${DISTNAME}p0
CATEGORIES=	x11
MASTER_SITES=	http://icculus.org/openbox/obconf/

HOMEPAGE=	http://icculus.org/openbox/index.php/Obconf

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

WANTLIB=	ICE SM X11 Xau Xcursor Xdmcp Xext Xfixes Xft Xi \
		Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 iconv intl m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pangoxft-1.0 png xml2 z

LIB_DEPENDS+=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		glade-2.0.>=0.1::devel/libglade2 \
		startup-notification-1::devel/startup-notification \
		obparser.>=5,obrender.>=5::x11/openbox
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
