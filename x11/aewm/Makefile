# $OpenBSD: Makefile,v 1.11 2004/12/17 15:18:31 alek Exp $

DISTNAME=	aewm-1.2.0
CATEGORIES=	x11

# X11/9wm
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xaw Xext Xi Xt c glib gmodule iconv intl m

COMMENT=	"minimalistic window manager for X11"
HOMEPAGE=	http://www.red-bean.com/~decklin/aewm/
MASTER_SITES=	${HOMEPAGE} \
		ftp://rt.fm/pub/aewm/

USE_GMAKE=	Yes
USE_X11=	Yes
LIB_DEPENDS=	gtk.1,gdk.1::x11/gtk+ \
		Xaw3d.6::x11/Xaw3d
NO_REGRESS=	Yes

.include <bsd.port.mk>
