# $OpenBSD: Makefile,v 1.13 2017/07/26 22:45:19 sthen Exp $

COMMENT =		YAML parser and emitter in C++

V=			0.5.1
GH_ACCOUNT=		jbeder
GH_PROJECT=		yaml-cpp
GH_TAGNAME=		release-$V
DISTNAME =		yaml-cpp-$V
REVISION =		4

SHARED_LIBS =		yaml-cpp	2.0 # 0.5

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jbeder/yaml-cpp

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m ${COMPILER_LIBCXX}

BUILD_DEPENDS =		devel/boost
RUN_DEPENDS =		devel/boost

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
