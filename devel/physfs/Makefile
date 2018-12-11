# $OpenBSD: Makefile,v 1.14 2018/12/11 21:30:29 naddy Exp $

COMMENT=	library to provide abstract access to various archives

DISTNAME=	physfs-3.0.1
REVISION=	0
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}downloads/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	physfs		3.0

HOMEPAGE=	http://icculus.org/physfs/

# ZLib
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c curses pthread readline z

MODULES=	devel/cmake

.include <bsd.port.mk>
