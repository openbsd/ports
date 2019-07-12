# $OpenBSD: Makefile,v 1.9 2019/07/12 20:48:51 sthen Exp $

COMMENT=	socks proxy and tls support for ucspi

DISTNAME=	ucspi-tools-1.6
REVISION=	0
CATEGORIES=	net

GH_ACCOUNT=	younix
GH_PROJECT=	ucspi
GH_COMMIT=	1aa21e6bd85ec45a6bce9b570548b6f4a5b1a9ed

HOMEPAGE=	https://github.com/younix/ucspi
MAINTAINER=	Jan Klemkow <j.klemkow@wemelug.de>

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto ssl tls

MAKE_FLAGS=	CC="${CC}" \
		PORTS_CFLAGS="${CFLAGS}"
FAKE_FLAGS=	DESTDIR=""

RUN_DEPENDS=	net/ucspi-tcp

.include <bsd.port.mk>
