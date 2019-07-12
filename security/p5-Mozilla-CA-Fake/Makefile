# $OpenBSD: Makefile,v 1.3 2019/07/12 20:49:08 sthen Exp $

COMMENT=	access system SSL certificate bundle from Perl

MODULES=	perl

DISTNAME=	Mozilla-CA-Fake-20140330
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	security

# PD
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://spacehopper.org/mirrors/

NO_TEST=	Yes

do-build:
	pod2man --name 'Mozilla::CA' --section 3p ${WRKSRC}/CA.pm \
	    ${WRKSRC}/Mozilla::CA.3p

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/${P5SITE}/Mozilla/
	${INSTALL_DATA} ${WRKSRC}/CA.pm ${PREFIX}/${P5SITE}/Mozilla/CA.pm
	${INSTALL_MAN_DIR} ${PREFIX}/man/man3p/
	${INSTALL_MAN} ${WRKSRC}/Mozilla::CA.3p ${PREFIX}/man/man3p/

.include <bsd.port.mk>
