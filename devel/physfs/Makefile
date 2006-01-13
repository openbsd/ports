# $OpenBSD: Makefile,v 1.5 2006/01/13 23:40:23 espie Exp $

COMMENT=	"library to provide abstract access to various archives"
DISTNAME=	physfs-1.0.0
PKGNAME=	${DISTNAME}p1
SHARED_LIBS=	physfs-1.0 	1.0 \
		physfs		1.0

CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}downloads/

HOMEPAGE=	http://icculus.org/physfs/

MAINTAINER=	Jolan Luff <jolan@openbsd.org>

# ZLib
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c curses pthread readline z

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
