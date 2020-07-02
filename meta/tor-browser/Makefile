# $OpenBSD: Makefile,v 1.27 2020/07/02 17:50:45 jasper Exp $

COMMENT=	Tor Browser meta package

MAINTAINER=	Caspar Schutijser <caspar@schutijser.com>

PKGNAME=	tor-browser-9.5.1
ONLY_FOR_ARCHS =	amd64 i386

RUN_DEPENDS=	www/tor-browser/browser>=9.5.1 \
		www/tor-browser/noscript>=11.0.32 \
		www/tor-browser/https-everywhere>=2020.5.20 \
		net/tor>=0.4.3.5

.include <bsd.port.mk>
