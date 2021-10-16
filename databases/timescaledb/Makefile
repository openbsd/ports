# $OpenBSD: Makefile,v 1.9 2021/10/16 20:43:41 denis Exp $

COMMENT =	database designed to make SQL scalable for time-series data

GH_ACCOUNT =	timescale
GH_PROJECT =	timescaledb
GH_TAGNAME =	2.4.2

CATEGORIES =	databases
HOMEPAGE =	https://www.timescale.com/

MAINTAINER =	Denis Fondras <denis@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE = Yes

MODULES =	devel/cmake
SUBST_VARS +=	GH_TAGNAME

WANTLIB =	c crypto pq ssl

COMPILER =	base-clang ports-gcc

LIB_DEPENDS =	databases/postgresql
BUILD_DEPENDS =	databases/postgresql,-server
RUN_DEPENDS =	databases/postgresql,-server

CONFIGURE_ARGS +=	-DREGRESS_CHECKS=OFF \
			-DLINTER=OFF \
			-DCLANG_FORMAT=OFF \
			-DSEND_TELEMETRY_DEFAULT=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Git=ON

# only build Apache-licensed code, disabling the TsL library which
# is licensed under its own license, see tsl/LICENSE-TIMESCALE
CONFIGURE_ARGS += -DAPACHE_ONLY=1

.include <bsd.port.mk>
