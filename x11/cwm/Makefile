# $OpenBSD: Makefile,v 1.7 2007/04/29 08:27:32 jasper Exp $

COMES_WITH=	4.2

COMMENT=	"calm window manager"
DISTNAME=	cwm-3
CATEGORIES=	x11
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://monkey.org/~marius/cwm/

# BSD
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=		X11 Xext Xft Xrender c fontconfig freetype

USE_X11=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
