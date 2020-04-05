# $OpenBSD: Makefile,v 1.23 2020/04/05 16:58:27 landry Exp $

COMMENT=	Tor Browser meta package

MAINTAINER=	Caspar Schutijser <caspar@schutijser.com>

PKGNAME=	tor-browser-9.0.8
ONLY_FOR_ARCHS =	amd64 i386

RUN_DEPENDS=	www/tor-browser/browser>=9.0.8 \
		www/tor-browser/noscript>=11.0.19 \
		www/tor-browser/https-everywhere>=2020.3.16 \
		net/tor>=0.4.2.7

.include <bsd.port.mk>
