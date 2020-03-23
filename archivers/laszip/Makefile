# $OpenBSD: Makefile,v 1.1.1.1 2020/03/23 13:15:22 landry Exp $

COMMENT =	lossless LiDAR compression

V = 3.4.3
DISTNAME =	laszip-src-${V}
PKGNAME =	laszip-${V}

SHARED_LIBS =	laszip 0.0 \
		laszip_api 0.0 # 8.0.5

CATEGORIES =	converters textproc archivers

HOMEPAGE =	https://laszip.org/

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB +=	m ${COMPILER_LIBCXX}

MASTER_SITES =	https://github.com/LASzip/LASzip/releases/download/${V}/

#c++11
COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

NO_TEST =	Yes

.include <bsd.port.mk>
