# $OpenBSD: Makefile,v 1.12 2005/01/10 00:30:23 jcs Exp $

DISTNAME=	aewm-1.3.0
CATEGORIES=	x11

# X11/9wm
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xaw Xext Xt c Xcursor Xft Xinerama Xrender \
			fontconfig freetype m

COMMENT=	"minimalistic window manager for X11"
HOMEPAGE=	http://www.red-bean.com/~decklin/aewm/
MASTER_SITES=	${HOMEPAGE}

USE_GMAKE=	Yes
USE_X11=	Yes
LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
NO_REGRESS=	Yes

.include <bsd.port.mk>
