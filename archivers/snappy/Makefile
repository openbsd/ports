# $OpenBSD: Makefile,v 1.3 2017/02/19 16:11:52 fcambus Exp $

COMMENT =	fast compression/decompression library

V =		1.1.4
DISTNAME =	snappy-${V}

SHARED_LIBS =	snappy	0.0	# 4.1

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
