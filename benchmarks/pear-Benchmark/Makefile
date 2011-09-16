# $OpenBSD: Makefile,v 1.17 2011/09/16 08:48:01 espie Exp $

COMMENT=	framework to benchmark PHP scripts or function calls

DISTNAME=	Benchmark-1.2.6
REVISION=	2
CATEGORIES=	benchmarks

MODULES=	www/pear

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
		
do-regress:
	@cd ${WRKSRC}/doc && ${PEAR_PHPBIN} ./timer_example.php

.include <bsd.port.mk>
