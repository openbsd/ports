# $OpenBSD: Makefile,v 1.8 2011/07/08 22:31:59 robert Exp $

COMMENT=	resolver library used to communicate with a DNS server

DISTNAME=	Net_DNS-1.0.1
CATEGORIES=	net

REVISION=	0

MODULES=	lang/php www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PKG_ARCH=	*
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-mhash

.include <bsd.port.mk>
