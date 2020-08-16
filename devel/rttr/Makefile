# $OpenBSD: Makefile,v 1.3 2020/08/16 12:19:17 rsadowski Exp $

COMMENT = 	C++ reflection library
V =		0.9.6
DISTNAME =	rttr-0.9.6
SHARED_LIBS=	rttr_core		0.0	# 0.9.6
DISTFILES = 	${DISTNAME}-src.tar.gz
REVISION =	0

MASTER_SITES = 	https://github.com/rttrorg/rttr/releases/download/v$V/
CATEGORIES =	devel

HOMEPAGE =	http://www.rttr.org
MODULES =	devel/cmake

# MIT
PERMIT_PACKAGE = Yes

COMPILER = base-clang ports-gcc

WANTLIB += ${COMPILER_LIBCXX} m

CONFIGURE_ARGS +=	-DBUILD_UNIT_TESTS=OFF
CONFIGURE_ARGS +=	-DBUILD_EXAMPLES=OFF
CONFIGURE_ARGS +=	-DUSE_PCH=OFF
CONFIGURE_ARGS +=	-DBUILD_DOCUMENTATION=OFF

NO_TEST =		Yes

.include <bsd.port.mk>
