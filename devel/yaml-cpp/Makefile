# $OpenBSD: Makefile,v 1.8 2014/11/04 15:08:18 dcoppa Exp $

COMMENT =		YAML parser and emitter in C++
DISTNAME =		yaml-cpp-0.5.1
REVISION =		1

SHARED_LIBS =		yaml-cpp	2.0 # 0.5

CATEGORIES =		devel

HOMEPAGE =		https://code.google.com/p/yaml-cpp/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m stdc++

BUILD_DEPENDS =		devel/boost
RUN_DEPENDS =		devel/boost

MASTER_SITES =		http://yaml-cpp.googlecode.com/files/

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
