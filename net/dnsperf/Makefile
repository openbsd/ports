# $OpenBSD: Makefile,v 1.5 2020/02/22 13:21:16 sthen Exp $

BROKEN = needs further work to fix with new BIND

COMMENT =	DNS performance testing tools

DISTNAME =	dnsperf-2.3.2
REVISION =	0

CATEGORIES =	net benchmarks

HOMEPAGE =	https://www.dns-oarc.net/tools/dnsperf/

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += bind9 c crypto dns iconv isc isccfg json-c lzma m
WANTLIB += ssl xml2 z

# needs c++abi on clang arches; this is the simplest way (but results
# in "Extra"s in check-lib-depends).
WANTLIB += ${COMPILER_LIBCXX}

MASTER_SITES =		https://www.dns-oarc.net/files/dnsperf/

LIB_DEPENDS =		isc-bind-*-!geoip:net/isc-bind

CONFIGURE_STYLE =	autoconf
CONFIGURE_ENV =		CPPFLAGS=-I${LOCALBASE}/include
AUTOCONF_VERSION =	2.69

# Drop README, Changelog etc.
post-install:
	rm -rf ${PREFIX}/share/doc

.include <bsd.port.mk>
