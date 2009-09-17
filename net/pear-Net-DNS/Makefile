# $OpenBSD: Makefile,v 1.1.1.1 2009/09/17 00:10:45 sthen Exp $

COMMENT=	resolver library used to communicate with a DNS server

DISTNAME=	Net_DNS-1.0.0
PKGNAME=	pear-${DISTNAME:S/_/-/}
CATEGORIES=	net pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::www/php5/extensions,-mhash

.include <bsd.port.mk>
