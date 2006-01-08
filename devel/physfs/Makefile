# $OpenBSD: Makefile,v 1.4 2006/01/08 10:58:46 bernd Exp $

COMMENT=	"library to provide abstract access to various archives"
DISTNAME=	physfs-1.0.0
PKGNAME=	${DISTNAME}p0
SHARED_LIBS=	physfs-1.0 	0.0 \
		physfs		0.0

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
