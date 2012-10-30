# $OpenBSD: Makefile,v 1.10 2012/10/30 23:51:21 brad Exp $

COMMENT=	library to provide abstract access to various archives

DISTNAME=	physfs-2.0.3
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}downloads/
EXTRACT_SUFX=	.tar.bz2

SHARED_LIBS=	physfs		2.0

HOMEPAGE=	http://icculus.org/physfs/

# ZLib
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	c curses pthread readline z

MODULES=	devel/cmake

.include <bsd.port.mk>
