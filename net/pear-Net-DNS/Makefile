# $OpenBSD: Makefile,v 1.11 2011/11/16 15:56:37 robert Exp $

COMMENT=	resolver library used to communicate with a DNS server

DISTNAME=	Net_DNS-1.0.1
CATEGORIES=	net

REVISION=	3

MODULES=	lang/php www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

PKG_ARCH=	*
RUN_DEPENDS=	lang/php/${MODPHP_VERSION},-mhash

.include <bsd.port.mk>
