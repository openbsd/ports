# $OpenBSD: Makefile,v 1.16 2011/06/04 11:41:08 sthen Exp $

COMMENT=	framework to benchmark PHP scripts or function calls

DISTNAME=	Benchmark-1.2.6
REVISION=	1
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
