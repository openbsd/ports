# $OpenBSD: Makefile,v 1.3 2015/09/18 22:39:32 sthen Exp $

COMMENT=	socks proxy and tls support for ucspi

DISTNAME=	ucspi-tools-1.3
CATEGORIES=	net

GH_ACCOUNT=	younix
GH_PROJECT=	ucspi
GH_COMMIT=	989d21dc6b86cec495313bc2a9d07d9dc8d259cf

HOMEPAGE=	https://github.com/younix/ucspi
MAINTAINER=	Jan Klemkow <j.klemkow@wemelug.de>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssl tls

FAKE_FLAGS=	DESTDIR=""

RUN_DEPENDS=	net/ucspi-tcp

.include <bsd.port.mk>
