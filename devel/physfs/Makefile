# $OpenBSD: Makefile,v 1.16 2019/08/04 20:52:47 thfr Exp $

COMMENT=	library to provide abstract access to various archives

DISTNAME=	physfs-3.0.2
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}downloads/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	physfs		3.0

HOMEPAGE=	https://icculus.org/physfs/
MAINTAINER=	Thomas Frohwein <thfr@openbsd.org>

# ZLib
PERMIT_PACKAGE=	Yes

WANTLIB=	c curses pthread readline z

MODULES=	devel/cmake

NO_TEST=	Yes

.include <bsd.port.mk>
