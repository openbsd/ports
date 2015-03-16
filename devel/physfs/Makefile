# $OpenBSD: Makefile,v 1.12 2015/03/16 18:07:44 naddy Exp $

COMMENT=	library to provide abstract access to various archives

DISTNAME=	physfs-2.0.3
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}downloads/
EXTRACT_SUFX=	.tar.bz2
REVISION=	0

SHARED_LIBS=	physfs		2.0

HOMEPAGE=	http://icculus.org/physfs/

# ZLib
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c curses pthread readline z

MODULES=	devel/cmake

.include <bsd.port.mk>
