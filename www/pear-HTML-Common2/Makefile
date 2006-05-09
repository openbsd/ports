# $OpenBSD: Makefile,v 1.2 2006/05/09 14:16:50 robert Exp $

COMMENT=	"base package for HTML handling in PHP5"

DISTNAME=	HTML_Common2-0.1.0
PKGNAME=	pear-${DISTNAME:S/_/-/}p0
CATEGORIES=	www devel pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>
MODULES=	www/php5/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=        ::devel/pear-PHPUnit2

do-regress: fake
	@cd ${WRKSRC} && ${PEAR_PHPBIN} \
	    -d include_path="${WRKINST}${PEAR_LIBDIR}:${PEAR_LIBDIR}" \
	    tests/HTML_Common2_Test.php

.include <bsd.port.mk>
