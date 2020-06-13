# $OpenBSD: Makefile,v 1.26 2020/06/13 06:26:01 landry Exp $

COMMENT=	Tor Browser meta package

MAINTAINER=	Caspar Schutijser <caspar@schutijser.com>

PKGNAME=	tor-browser-9.5
ONLY_FOR_ARCHS =	amd64 i386

RUN_DEPENDS=	www/tor-browser/browser>=9.5 \
		www/tor-browser/noscript>=11.0.26 \
		www/tor-browser/https-everywhere>=2020.5.20 \
		net/tor>=0.4.3.5

.include <bsd.port.mk>
