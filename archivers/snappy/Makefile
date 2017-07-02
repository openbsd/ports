# $OpenBSD: Makefile,v 1.5 2017/07/02 13:45:36 fcambus Exp $

COMMENT =	fast compression/decompression library

V =		1.1.4
DISTNAME =	snappy-${V}
REVISION =	0

SHARED_LIBS =	snappy	0.0	# 4.1

CATEGORIES =	archivers

HOMEPAGE =	http://google.github.io/snappy/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	m ${LIBCXX}

MASTER_SITES =	https://github.com/google/snappy/releases/download/${V}/

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS += --disable-gtest

.include <bsd.port.mk>
