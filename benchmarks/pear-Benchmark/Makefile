# $OpenBSD: Makefile,v 1.7 2006/10/20 10:14:12 mbalmer Exp $

COMMENT=	"framework to benchmark PHP scripts or function calls"

DISTNAME=	Benchmark-1.2.3
PKGNAME=	pear-${DISTNAME}p0
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
