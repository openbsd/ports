# $OpenBSD: Makefile,v 1.3 2007/03/22 22:48:03 robert Exp $

COMMENT=	"regression testing framework for PHP 5"

DISTNAME=	PHPUnit2-2.1.6
PKGNAME=	pear-${DISTNAME}p1
CATEGORIES=	devel pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>
MODULES=	www/pear

RUN_DEPENDS=	::benchmarks/pear-Benchmark

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=${RUN_DEPENDS}

do-regress: fake
	@cd ${WRKSRC} && ${PEAR_PHPBIN} \
		-d include_path="${WRKINST}${PEAR_LIBDIR}:${PEAR_LIBDIR}" \
		Tests/AllTests.php

.include <bsd.port.mk>
