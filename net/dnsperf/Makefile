# $OpenBSD: Makefile,v 1.10 2020/12/10 17:22:52 sthen Exp $

COMMENT =	DNS performance testing tools

DISTNAME =	dnsperf-2.4.0

CATEGORIES =	net benchmarks

HOMEPAGE =	https://www.dns-oarc.net/tools/dnsperf/

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += c crypto ldns m ssl pthread

MASTER_SITES =		https://www.dns-oarc.net/files/dnsperf/

LIB_DEPENDS =		net/ldns,-main

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS=-I${LOCALBASE}/include \
			LDFLAGS=-L${LOCALBASE}/lib

.include <bsd.port.mk>
