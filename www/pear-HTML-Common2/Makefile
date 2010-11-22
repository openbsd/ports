# $OpenBSD: Makefile,v 1.9 2010/11/22 08:36:52 espie Exp $

COMMENT=	base package for HTML handling in PHP5

DISTNAME=	HTML_Common2-0.1.0
PKGNAME=	pear-${DISTNAME:S/_/-/}
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
