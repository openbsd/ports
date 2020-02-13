# $OpenBSD: Makefile,v 1.19 2020/02/13 07:41:54 landry Exp $

COMMENT=	Tor Browser meta package

MAINTAINER=	Sean Levy <attila@stalphonsos.com>

PKGNAME=	tor-browser-9.0.4
ONLY_FOR_ARCHS =	amd64 i386 aarch64

RUN_DEPENDS=	www/tor-browser/browser>=9.0.4 \
		www/tor-browser/noscript>=11.0.11 \
		www/tor-browser/https-everywhere>=2019.11.7 \
		net/tor>=0.4.2.5

.include <bsd.port.mk>
