# $OpenBSD: Makefile,v 1.13 2009/11/06 08:32:36 jasper Exp $

COMMENT=	framework to benchmark PHP scripts or function calls

DISTNAME=	Benchmark-1.2.6
PKGNAME=	pear-${DISTNAME}p1
CATEGORIES=	benchmarks pear

MODULES=	www/pear

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
		
do-regress:
	@cd ${WRKSRC}/doc && ${PEAR_PHPBIN} ./timer_example.php

.include <bsd.port.mk>
