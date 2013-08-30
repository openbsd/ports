# $OpenBSD: Makefile,v 1.1.1.1 2013/08/30 23:41:15 bluhm Exp $

COMMENT =		SI6 networks IPv6 toolkit

VERSION =		1.4b
DISTNAME =		ipv6-toolkit-v${VERSION}
PKGNAME =		ipv6-toolkit-${VERSION}

CATEGORIES =		net

HOMEPAGE =		http://www.si6networks.com/tools/ipv6toolkit/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# GPL v3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m pcap

MASTER_SITES =		http://www.si6networks.com/tools/ipv6toolkit/

FAKE_FLAGS =		PREFIX=${PREFIX} \
			MANPREFIX=${PREFIX} \
			ETCPATH=${DESTDIR}/${PREFIX}/share/examples/ipv6-toolkit

NO_TEST =		Yes

pre-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ipv6-toolkit

.include <bsd.port.mk>
