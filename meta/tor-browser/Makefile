# $OpenBSD: Makefile,v 1.20 2020/02/16 10:45:59 landry Exp $

COMMENT=	Tor Browser meta package

MAINTAINER=	Caspar Schutijser <caspar@schutijser.com>

PKGNAME=	tor-browser-9.0.5
ONLY_FOR_ARCHS =	amd64 i386 aarch64

RUN_DEPENDS=	www/tor-browser/browser>=9.0.5 \
		www/tor-browser/noscript>=11.0.13 \
		www/tor-browser/https-everywhere>=2019.11.7 \
		net/tor>=0.4.2.5

.include <bsd.port.mk>
