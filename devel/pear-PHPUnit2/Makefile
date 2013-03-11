# $OpenBSD: Makefile,v 1.10 2013/03/11 10:50:24 espie Exp $

COMMENT=	regression testing framework for PHP 5

DISTNAME=	PHPUnit2-2.1.6
REVISION =	2
CATEGORIES=	devel

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>
MODULES=	www/pear

RUN_DEPENDS=	benchmarks/pear-Benchmark

# PHP License
PERMIT_PACKAGE_CDROM=	Yes

TEST_DEPENDS=${RUN_DEPENDS}

do-test: fake
	@cd ${WRKSRC} && ${PEAR_PHPBIN} \
		-d include_path="${WRKINST}${PEAR_LIBDIR}:${PEAR_LIBDIR}" \
		Tests/AllTests.php

.include <bsd.port.mk>
