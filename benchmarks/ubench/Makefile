# $OpenBSD: Makefile,v 1.2 2004/01/30 08:39:48 xsa Exp $

COMMENT=	"Unix benchmark utility"

DISTNAME=	ubench-0.32	
CATEGORIES=	benchmarks

HOMEPAGE=	http://www.phystech.com/download/ubench.html
MASTER_SITES=	http://www.phystech.com/ftp/ 

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	simple	

ALL_TARGET=	default
MAKE_FLAGS=	CFLAGS="${CFLAGS}"

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ubench ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/ubench.8 ${PREFIX}/man/man8

.include <bsd.port.mk>
