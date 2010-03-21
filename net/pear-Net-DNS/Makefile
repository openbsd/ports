# $OpenBSD: Makefile,v 1.5 2010/03/21 00:04:15 sthen Exp $

COMMENT=	resolver library used to communicate with a DNS server

DISTNAME=	Net_DNS-1.0.1
PKGNAME=	pear-${DISTNAME:S/_/-/}
CATEGORIES=	net

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PKG_ARCH=	*
RUN_DEPENDS=	::www/php5/extensions,-mhash

.include <bsd.port.mk>
