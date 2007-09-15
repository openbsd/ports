# $OpenBSD: Makefile,v 1.15 2007/09/15 20:59:41 merdely Exp $

COMMENT=	paragraph reflow for email

VERSION=	1.52
DISTNAME=	Par${VERSION:S/.//}
PKGNAME=	par-${VERSION}
CATEGORIES=	textproc

HOMEPAGE=	http://www.nicemice.net/par/

# custom
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c 

MASTER_SITES=   ${HOMEPAGE}

ALL_TARGET=

NO_REGRESS=	Yes

do-configure:
	cd ${WRKSRC}; cp protoMakefile Makefile

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/par ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/par.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
