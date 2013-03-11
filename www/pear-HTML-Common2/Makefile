# $OpenBSD: Makefile,v 1.13 2013/03/11 11:44:47 espie Exp $

COMMENT=	base package for HTML handling in PHP5

DISTNAME=	HTML_Common2-0.1.0
REVISION=	4
CATEGORIES=	www devel

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes

TEST_DEPENDS=        devel/pear-PHPUnit2

do-test: fake
	@cd ${WRKSRC} && ${PEAR_PHPBIN} \
	    -d include_path="${WRKINST}${PEAR_LIBDIR}:${PEAR_LIBDIR}" \
	    tests/HTML_Common2_Test.php

.include <bsd.port.mk>
