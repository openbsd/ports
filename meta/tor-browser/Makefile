# $OpenBSD: Makefile,v 1.24 2020/04/09 21:15:29 sthen Exp $

COMMENT=	Tor Browser meta package

MAINTAINER=	Caspar Schutijser <caspar@schutijser.com>

PKGNAME=	tor-browser-9.0.9
ONLY_FOR_ARCHS =	amd64 i386

RUN_DEPENDS=	www/tor-browser/browser>=9.0.9 \
		www/tor-browser/noscript>=11.0.23 \
		www/tor-browser/https-everywhere>=2020.3.16 \
		net/tor>=0.4.2.7

.include <bsd.port.mk>
