# $OpenBSD: Makefile,v 1.18 2013/03/10 23:04:44 espie Exp $

COMMENT=	framework to benchmark PHP scripts or function calls

DISTNAME=	Benchmark-1.2.6
REVISION=	2
CATEGORIES=	benchmarks

MODULES=	www/pear

# BSD
PERMIT_PACKAGE_CDROM=	Yes
		
do-test:
	@cd ${WRKSRC}/doc && ${PEAR_PHPBIN} ./timer_example.php

.include <bsd.port.mk>
