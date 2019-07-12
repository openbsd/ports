# $OpenBSD: Makefile,v 1.15 2019/07/12 20:45:16 sthen Exp $

COMMENT=	library to provide abstract access to various archives

DISTNAME=	physfs-3.0.1
REVISION=	0
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}downloads/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	physfs		3.0

HOMEPAGE=	http://icculus.org/physfs/

# ZLib
PERMIT_PACKAGE=	Yes

WANTLIB=	c curses pthread readline z

MODULES=	devel/cmake

.include <bsd.port.mk>
