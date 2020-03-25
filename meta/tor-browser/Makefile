# $OpenBSD: Makefile,v 1.22 2020/03/25 07:32:47 landry Exp $

COMMENT=	Tor Browser meta package

MAINTAINER=	Caspar Schutijser <caspar@schutijser.com>

PKGNAME=	tor-browser-9.0.7
ONLY_FOR_ARCHS =	amd64 i386

RUN_DEPENDS=	www/tor-browser/browser>=9.0.7 \
		www/tor-browser/noscript>=11.0.19 \
		www/tor-browser/https-everywhere>=2019.11.7 \
		net/tor>=0.4.2.7

.include <bsd.port.mk>
