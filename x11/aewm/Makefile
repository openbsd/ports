# $OpenBSD: Makefile,v 1.8 2002/12/29 20:31:41 fgsch Exp $

DISTNAME=	aewm-1.2.0
CATEGORIES=	x11

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

COMMENT=	"minimalistic window manager for X11"
HOMEPAGE=	http://www.red-bean.com/~decklin/aewm/
MASTER_SITES=	${HOMEPAGE} \
		ftp://rt.fm/pub/aewm/

MAINTAINER=	Joshua Stein <jcs@rt.fm>

USE_GMAKE=	Yes
USE_X11=	Yes
LIB_DEPENDS=	gtk.1,gdk.1::x11/gtk+ \
		Xaw3d.6::x11/Xaw3d
NO_REGRESS=	Yes

.include <bsd.port.mk>
