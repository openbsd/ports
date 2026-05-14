COMMENT =	packet converter for sniffing IEEE 802.15.4

GH_ACCOUNT =	homewsn
GH_PROJECT =	whsniff
GH_TAGNAME =	v1.3

CATEGORIES =	net security

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB +=	c usb-1.0

LIB_DEPENDS =	devel/libusb1

MAKE_FLAGS =	CFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS =	PREFIX=${DESTDIR}${PREFIX}

NO_TEST =	Yes
USE_GMAKE =	Yes

.include <bsd.port.mk>
