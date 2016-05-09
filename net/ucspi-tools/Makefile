# $OpenBSD: Makefile,v 1.4 2016/05/09 23:01:45 jca Exp $

COMMENT=	socks proxy and tls support for ucspi

DISTNAME=	ucspi-tools-1.4
CATEGORIES=	net

GH_ACCOUNT=	younix
GH_PROJECT=	ucspi
GH_COMMIT=	5e964bbf6e2e38b08bf74bbe17fa648102f5853d

HOMEPAGE=	https://github.com/younix/ucspi
MAINTAINER=	Jan Klemkow <j.klemkow@wemelug.de>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssl tls

FAKE_FLAGS=	DESTDIR=""

RUN_DEPENDS=	net/ucspi-tcp

.include <bsd.port.mk>
