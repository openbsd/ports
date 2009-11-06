# $OpenBSD: Makefile,v 1.3 2009/11/06 08:32:37 jasper Exp $

COMMENT=	resolver library used to communicate with a DNS server

DISTNAME=	Net_DNS-1.0.0
PKGNAME=	pear-${DISTNAME:S/_/-/}p0
CATEGORIES=	net pear

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PKG_ARCH=	*
RUN_DEPENDS=	::www/php5/extensions,-mhash

.include <bsd.port.mk>
