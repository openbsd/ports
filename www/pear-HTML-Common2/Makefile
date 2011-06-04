# $OpenBSD: Makefile,v 1.10 2011/06/04 11:41:08 sthen Exp $

COMMENT=	base package for HTML handling in PHP5

DISTNAME=	HTML_Common2-0.1.0
REVISION=	2
CATEGORIES=	www devel

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=        devel/pear-PHPUnit2

do-regress: fake
	@cd ${WRKSRC} && ${PEAR_PHPBIN} \
	    -d include_path="${WRKINST}${PEAR_LIBDIR}:${PEAR_LIBDIR}" \
	    tests/HTML_Common2_Test.php

.include <bsd.port.mk>
