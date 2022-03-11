COMMENT=	socks proxy and tls support for ucspi

DISTNAME=	ucspi-tools-1.7
CATEGORIES=	net

GH_ACCOUNT=	younix
GH_PROJECT=	ucspi
GH_COMMIT=	329110310c71a08a942b4a36613b6db090df65f4

HOMEPAGE=	https://github.com/younix/ucspi
MAINTAINER=	Jan Klemkow <j.klemkow@wemelug.de>

# ISC
PERMIT_PACKAGE=	Yes

WANTLIB += c crypto ssl tls

MAKE_FLAGS=	CC="${CC}"
FAKE_FLAGS=	DESTDIR=""

RUN_DEPENDS=	net/ucspi-tcp

.include <bsd.port.mk>
