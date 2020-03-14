# $OpenBSD: Makefile,v 1.21 2020/03/14 07:21:44 landry Exp $

COMMENT=	Tor Browser meta package

MAINTAINER=	Caspar Schutijser <caspar@schutijser.com>

PKGNAME=	tor-browser-9.0.6
ONLY_FOR_ARCHS =	amd64 i386

RUN_DEPENDS=	www/tor-browser/browser>=9.0.6 \
		www/tor-browser/noscript>=11.0.15 \
		www/tor-browser/https-everywhere>=2019.11.7 \
		net/tor>=0.4.2.5

.include <bsd.port.mk>
