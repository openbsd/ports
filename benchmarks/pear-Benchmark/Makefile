# $OpenBSD: Makefile,v 1.5 2006/10/04 22:28:28 mbalmer Exp $

COMMENT=	"framework to benchmark PHP scripts or function calls"

DISTNAME=	Benchmark-1.2.3
CATEGORIES=	benchmarks pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>
MODULES=	www/php5/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
		
do-regress:
	@cd ${WRKSRC}/doc && ${PEAR_PHPBIN} ./timer_example.php

.include <bsd.port.mk>
