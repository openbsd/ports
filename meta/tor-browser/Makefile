# $OpenBSD: Makefile,v 1.29 2020/08/26 07:37:38 landry Exp $

COMMENT=	Tor Browser meta package

MAINTAINER=	Caspar Schutijser <caspar@schutijser.com>

PKGNAME=	tor-browser-9.5.4
ONLY_FOR_ARCHS =	amd64 i386

RUN_DEPENDS=	www/tor-browser/browser>=9.5.4 \
		www/tor-browser/noscript>=11.0.38 \
		www/tor-browser/https-everywhere>=2020.8.13 \
		net/tor>=0.4.3.6

.include <bsd.port.mk>
