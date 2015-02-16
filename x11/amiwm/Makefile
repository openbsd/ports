# $OpenBSD: Makefile,v 1.10 2015/02/16 22:57:13 naddy Exp $

COMMENT=	Amiga Workbench lookalike window manager

VERSION=	0.20pl48
DISTNAME=	amiwm${VERSION}
PKGNAME=	amiwm-0.20.48
CATEGORIES=	x11

MASTER_SITES=	ftp://ftp.lysator.liu.se/pub/X11/wm/amiwm/

HOMEPAGE=	http://www.lysator.liu.se/~marcus/amiwm.html

PERMIT_PACKAGE_CDROM=	restrictive
PERMIT_PACKAGE_FTP=	restrictive
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xmu c m

CONFIGURE_STYLE= 	gnu dest

CONFIGURE_ENV=		CPPFLAGS='${CPPFLAGS} -I${X11BASE}/include'

NO_TEST=	Yes

.include <bsd.port.mk>
