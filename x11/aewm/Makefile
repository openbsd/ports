# $OpenBSD: Makefile,v 1.6 2001/11/02 17:52:58 jcs Exp $

DISTNAME=	aewm-1.1.2
CATEGORIES=	x11
NEED_VERSION=	1.474

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
