# $OpenBSD: Makefile,v 1.7 2009/08/10 06:30:30 kili Exp $

COMMENT=	NEC2 antenna simulator visualizer

VERSION=	1.35
DISTNAME=	xnecview-${VERSION}
PKGNAME=	${DISTNAME}p3
EXTRACT_SUFX=	.tgz

MASTER_SITES=	http://wwwhome.cs.utwente.nl/~ptdeboer/ham/xnecview/

CATEGORIES=    	cad hamradio

HOMEPAGE=	http://www.cs.utwente.nl/~ptdeboer/ham/xnecview/

MAINTAINER=	Jason Wright <jason@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb z

MODULES=		devel/gettext

LIB_DEPENDS=    gtk-x11-2.0.>=400.13,gdk-x11-2.0.>=400.13,gdk_pixbuf-2.0.>=400.13::x11/gtk+2
USE_GMAKE=yes

CONFIGURE_STYLE=	imake

.include <bsd.port.mk>
