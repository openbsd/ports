# $OpenBSD: Makefile,v 1.2 2015/09/13 12:52:19 sthen Exp $

BROKEN=		libtls api changes

COMMENT=	socks proxy and tls support for ucspi

DISTNAME=	ucspi-tools-1.1
CATEGORIES=	net

GH_ACCOUNT=	younix
GH_PROJECT=	ucspi
GH_COMMIT=	cf8c863045c83b19ce04f6b1ff5a64094ea1026e

HOMEPAGE=	https://github.com/younix/ucspi
MAINTAINER=	Jan Klemkow <j.klemkow@wemelug.de>

# ISC
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssl tls

FAKE_FLAGS=	DESTDIR=""

RUN_DEPENDS=	net/ucspi-tcp

.include <bsd.port.mk>
