# $OpenBSD: Makefile,v 1.10 2007/03/22 22:48:03 robert Exp $

COMMENT=	"framework to benchmark PHP scripts or function calls"

DISTNAME=	Benchmark-1.2.6
PKGNAME=	pear-${DISTNAME}p0
CATEGORIES=	benchmarks pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>
MODULES=	www/pear

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
		
do-regress:
	@cd ${WRKSRC}/doc && ${PEAR_PHPBIN} ./timer_example.php

.include <bsd.port.mk>
