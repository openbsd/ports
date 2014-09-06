# $OpenBSD: Makefile,v 1.6 2014/09/06 13:06:27 jsg Exp $

COMMENT =		YAML parser and emitter in C++
DISTNAME =		yaml-cpp-0.5.1

SHARED_LIBS =		yaml-cpp	2.0 # 0.5

CATEGORIES =		devel

HOMEPAGE =		https://code.google.com/p/yaml-cpp/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m stdc++

BUILD_DEPENDS =		devel/boost

MASTER_SITES =		http://yaml-cpp.googlecode.com/files/

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
