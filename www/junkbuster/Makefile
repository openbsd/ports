# $OpenBSD: Makefile,v 1.16 2013/03/11 11:44:42 espie Exp $

COMMENT=	banner-ad blocking proxy server

DISTNAME=	ijb20
PKGNAME=	junkbuster-2.0.2
REVISION=	2
CATEGORIES=	www

HOMEPAGE=	http://internet.junkbuster.com/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=	${HOMEPAGE}
EXTRACT_SUFX=	.tar.Z

ALL_TARGET=	

USE_GROFF =	Yes
NO_TEST=	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/junkbuster
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/junkbuster
	${INSTALL_PROGRAM} ${WRKSRC}/junkbuster ${PREFIX}/sbin
	${INSTALL_DATA} ${WRKSRC}/*.ini ${PREFIX}/share/examples/junkbuster/
	${INSTALL_MAN} ${WRKSRC}/junkbuster.1 ${PREFIX}/man/man1/
	${INSTALL_DATA} ${WRKSRC}/*.html ${PREFIX}/share/doc/junkbuster
	@perl -i -p -e 's/\r//;' ${PREFIX}/share/examples/junkbuster/*.ini

.include <bsd.port.mk>
