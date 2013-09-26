# $OpenBSD: Makefile,v 1.2 2013/09/26 21:52:35 bluhm Exp $

COMMENT =		SI6 networks IPv6 toolkit

VERSION =		1.4b
REVISION =		1
DISTNAME =		ipv6-toolkit-v${VERSION}
PKGNAME =		ipv6-toolkit-${VERSION}

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
			ETCPATH=${DESTDIR}/${PREFIX}/share/examples/ipv6-toolkit

NO_TEST =		Yes

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ipv6-toolkit

.include <bsd.port.mk>
