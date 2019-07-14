# $OpenBSD: Makefile,v 1.12 2019/07/14 02:16:52 naddy Exp $

COMMENT=	Amiga Workbench lookalike window manager

VERSION=	0.21pl2
DISTNAME=	amiwm${VERSION}
PKGNAME=	amiwm-${VERSION:S/pl/./}
CATEGORIES=	x11

MASTER_SITES=	ftp://ftp.lysator.liu.se/pub/X11/wm/amiwm/

HOMEPAGE=	http://www.lysator.liu.se/~marcus/amiwm.html

PERMIT_PACKAGE=		restrictive
PERMIT_DISTFILES=	Yes
WANTLIB=		ICE SM X11 Xext Xmu c m

CONFIGURE_STYLE= 	gnu dest

CONFIGURE_ENV=		CPPFLAGS='${CPPFLAGS} -I${X11BASE}/include'

NO_TEST=	Yes

.include <bsd.port.mk>
