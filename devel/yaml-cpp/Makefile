# $OpenBSD: Makefile,v 1.9 2015/06/25 07:37:00 jasper Exp $

COMMENT =		YAML parser and emitter in C++

V=			0.5.1
GH_ACCOUNT=		jbeder
GH_PROJECT=		yaml-cpp
GH_TAGNAME=		release-$V
DISTNAME =		yaml-cpp-$V
REVISION =		2

SHARED_LIBS =		yaml-cpp	2.0 # 0.5

CATEGORIES =		devel

HOMEPAGE =		https://github.com/jbeder/yaml-cpp

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m stdc++

BUILD_DEPENDS =		devel/boost
RUN_DEPENDS =		devel/boost

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
