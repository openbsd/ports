# $OpenBSD: Makefile,v 1.3 2019/07/12 20:48:25 sthen Exp $

COMMENT =	DNS performance testing tools

DISTNAME =	dnsperf-2.2.1

CATEGORIES =	net benchmarks

HOMEPAGE =	https://www.dns-oarc.net/tools/dnsperf/

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += bind9 c crypto dns iconv isc isccfg json-c lzma m xml2
WANTLIB += z

# needs c++abi on clang arches; this is the simplest way (but results
# in "Extra"s in check-lib-depends).
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES =		https://www.dns-oarc.net/files/dnsperf/

LIB_DEPENDS =		isc-bind-*-!geoip:net/isc-bind

CONFIGURE_STYLE =	gnu

# Drop README, Changelog etc.
post-install:
	rm -rf ${PREFIX}/share/doc

.include <bsd.port.mk>
