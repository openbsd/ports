# $OpenBSD: Makefile,v 1.4 2013/08/07 21:31:50 naddy Exp $

COMMENT =		YAML parser and emitter in C++
DISTNAME =		yaml-cpp-0.3.0
REVISION =		0

SHARED_LIBS =		yaml-cpp	1.0 # 0.3

CATEGORIES =		devel

HOMEPAGE =		https://code.google.com/p/yaml-cpp/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m stdc++

MASTER_SITES =		https://yaml-cpp.googlecode.com/files/

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

WRKDIST =		${WRKDIR}/yaml-cpp

.include <bsd.port.mk>
