# $OpenBSD: Makefile,v 1.6 2016/09/19 21:24:21 bluhm Exp $

COMMENT=	socks proxy and tls support for ucspi

DISTNAME=	ucspi-tools-1.5
CATEGORIES=	net

GH_ACCOUNT=	younix
GH_PROJECT=	ucspi
GH_COMMIT=	5df4b319a49d63189855f0f47a445d675616b1e7

HOMEPAGE=	https://github.com/younix/ucspi
MAINTAINER=	Jan Klemkow <j.klemkow@wemelug.de>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssl tls

FAKE_FLAGS=	DESTDIR=""

RUN_DEPENDS=	net/ucspi-tcp

.include <bsd.port.mk>
