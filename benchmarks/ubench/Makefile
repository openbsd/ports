# $OpenBSD: Makefile,v 1.6 2012/04/02 13:06:42 ajacoutot Exp $

COMMENT=	Unix benchmark utility

DISTNAME=	ubench-0.32	
CATEGORIES=	benchmarks
REVISION=	0

HOMEPAGE=	http://www.phystech.com/download/ubench.html
MASTER_SITES=	http://www.phystech.com/ftp/ 

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m

CONFIGURE_STYLE=	simple	

ALL_TARGET=	default
MAKE_FLAGS=	CFLAGS="${CFLAGS}"

USE_GROFF =	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ubench ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/ubench.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
