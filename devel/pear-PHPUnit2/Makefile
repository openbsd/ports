# $OpenBSD: Makefile,v 1.2 2006/05/09 14:16:50 robert Exp $

COMMENT=	"regression testing framework for PHP 5"

DISTNAME=	PHPUnit2-2.1.6
PKGNAME=	pear-${DISTNAME}p0
CATEGORIES=	devel pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>
MODULES=	www/php5/pear

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
