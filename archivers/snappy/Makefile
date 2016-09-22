# $OpenBSD: Makefile,v 1.2 2016/09/22 12:57:17 fcambus Exp $

COMMENT =	fast compression/decompression library

V =		1.1.3
DISTNAME =	snappy-${V}
REVISION =	0

SHARED_LIBS =	snappy	0.0	# 4.0

CATEGORIES =	archivers

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

HOMEPAGE =	http://google.github.io/snappy/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	m stdc++

MASTER_SITES =	https://github.com/google/snappy/releases/download/${V}/

CONFIGURE_STYLE = gnu

CONFIGURE_ARGS += --disable-gtest

.include <bsd.port.mk>
