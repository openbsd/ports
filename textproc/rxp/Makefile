# $OpenBSD: Makefile,v 1.25 2014/09/07 18:11:07 jasper Exp $

COMMENT=	validating namespace-aware XML parser

DISTNAME=	rxp-1.4.8
REVISION=	0
CATEGORIES=	textproc

HOMEPAGE=	http://www.cogsci.ed.ac.uk/~richard/rxp.html

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c 

MASTER_SITES=	http://distfiles.nl/

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rxp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rxp.1 ${PREFIX}/man/man1/rxp.1

.include <bsd.port.mk>
