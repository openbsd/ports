# $OpenBSD: Makefile,v 1.4 2019/04/04 19:18:18 bluhm Exp $

COMMENT =		SI6 networks IPv6 toolkit

VERSION =		2.0
DISTNAME =		ipv6toolkit-v${VERSION}
PKGNAME =		ipv6toolkit-${VERSION}
REVISION =		0

CATEGORIES =		net

HOMEPAGE =		http://www.si6networks.com/tools/ipv6toolkit/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# GPL v3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pcap

MASTER_SITES =		http://www.si6networks.com/tools/ipv6toolkit/

MAKE_FLAGS =		CC=${CC}
FAKE_FLAGS =		PREFIX=${PREFIX} \
			MANPREFIX=${PREFIX} \
			ETCPATH=${DESTDIR}/${PREFIX}/share/examples/ipv6toolkit

NO_TEST =		Yes

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ipv6toolkit

.include <bsd.port.mk>
