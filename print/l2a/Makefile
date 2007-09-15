# $OpenBSD: Makefile,v 1.6 2007/09/15 21:36:44 merdely Exp $

COMMENT=		filter for removing (La)TeX markup

DISTNAME=		l2a-1.2
CATEGORIES=     	print

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM= Yes 
PERMIT_DISTFILES_FTP=	Yes 
WANTLIB=		c

MASTER_SITES=		http://monkey.org/~jose/openbsd/ports/

MAKE_FLAGS=		CC='${CC}' OBJ=l2a.o EXE=l2a LLL=-ll

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/l2a ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/l2a.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
