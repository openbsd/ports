# $OpenBSD: Makefile,v 1.1.1.1 2016/06/14 18:59:52 danj Exp $

COMMENT =	fast compression/decompression library

V =		1.1.3
DISTNAME =	snappy-${V}

SHARED_LIBS =	snappy	0.0	# 4.0

CATEGORIES =	archivers

MAINTAINER =	Frederic Cambus <fred@statdns.com>

HOMEPAGE =	http://google.github.io/snappy/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	m stdc++

MASTER_SITES =	https://github.com/google/snappy/releases/download/${V}/

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS += --disable-gtest

.include <bsd.port.mk>
