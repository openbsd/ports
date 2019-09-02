# $OpenBSD: Makefile,v 1.18 2019/09/02 06:35:42 landry Exp $

COMMENT=	Tor Browser meta package

MAINTAINER=	Sean Levy <attila@stalphonsos.com>

PKGNAME=	tor-browser-8.0.9
ONLY_FOR_ARCHS =	amd64 i386

RUN_DEPENDS=	www/tor-browser/browser>=8.0.9 \
		www/tor-browser/torbutton>=2.0.13 \
		www/tor-browser/tor-launcher>=0.2.16.6p1 \
		www/tor-browser/noscript>=10.6.1 \
		www/tor-browser/https-everywhere>=2019.1.31p0 \
		net/tor>=0.3.5.8

.include <bsd.port.mk>
