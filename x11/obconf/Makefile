# $OpenBSD: Makefile,v 1.6 2007/06/08 18:42:01 ajacoutot Exp $

COMMENT=	configuration utility for openbox

DISTNAME=	obconf-2.0.0
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
		obparser.>=4,obrender.>=4::x11/openbox

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
