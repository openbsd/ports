# $OpenBSD: Makefile,v 1.1.1.1 2007/05/28 17:49:39 jason Exp $

COMMENT=	"NEC2 antenna simulator visualizer"

VERSION=	1.35
DISTNAME=	xnecview-${VERSION}
EXTRACT_SUFX=	.tgz

MASTER_SITES=	http://wwwhome.cs.utwente.nl/~ptdeboer/ham/xnecview/

CATEGORIES=    	cad hamradio

HOMEPAGE=	http://www.cs.utwente.nl/~ptdeboer/ham/xnecview/

MAINTAINER=	Jason Wright <jason@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr	\
		Xrender c expat fontconfig freetype m z			\
		atk-1.0 cairo glib-2.0 glitz gmodule-2.0 gobject-2.0	\
		iconv intl pango-1.0 pangocairo-1.0 pangoft2-1.0 png

LIB_DEPENDS=    gtk-x11-2.0.>=400.13,gdk-x11-2.0.>=400.13,gdk_pixbuf-2.0.>=400.13::x11/gtk+2
USE_GMAKE=yes

CONFIGURE_STYLE=	imake

.include <bsd.port.mk>
