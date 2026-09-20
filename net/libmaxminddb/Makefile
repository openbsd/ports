COMMENT-main=	library for MaxMind GeoIP2/GeoLite2 IP geolocation databases

V=		1.14.1
DISTNAME=	libmaxminddb-${V}
PKGNAME-main=	libmaxminddb-${V}

SHARED_LIBS +=	maxminddb	0.0	# 0.7

CATEGORIES=	net geo

HOMEPAGE=	https://maxmind.github.io/libmaxminddb/

# libmaxminddb: Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB-main +=	c m pthread

SITES=		https://github.com/maxmind/libmaxminddb/releases/download/${V}/

MULTI_PACKAGES=	-main

COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

RUN_DEPENDS-main= net/dbip/country

TEST_DEPENDS=	devel/p5-IPC-Run3

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
