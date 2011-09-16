# $OpenBSD: Makefile,v 1.9 2011/09/16 09:24:53 espie Exp $

COMMENT=	regression testing framework for PHP 5

DISTNAME=	PHPUnit2-2.1.6
REVISION =	2
CATEGORIES=	devel

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>
MODULES=	www/pear

RUN_DEPENDS=	benchmarks/pear-Benchmark

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
