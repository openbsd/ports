COMMENT =		SI6 networks IPv6 toolkit

DIST_TUPLE =		github fgont ipv6toolkit v2.2 .

CATEGORIES =		net

HOMEPAGE =		http://www.si6networks.com/tools/ipv6toolkit/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# GPL v3
PERMIT_PACKAGE =	Yes

WANTLIB =		c m pcap

MAKE_FLAGS =		CC=${CC}
FAKE_FLAGS =		PREFIX=${PREFIX} \
			MANPREFIX=${PREFIX} \
			ETCPATH=${DESTDIR}/${PREFIX}/share/examples/ipv6toolkit

NO_TEST =		Yes

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ipv6toolkit

.include <bsd.port.mk>
