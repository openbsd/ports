# $OpenBSD: Makefile,v 1.2 2012/03/03 10:33:47 sthen Exp $

COMMENT =		YAML parser and emitter in C++
DISTNAME =		yaml-cpp-0.3.0

SHARED_LIBS =		yaml-cpp	1.0 # 0.3

CATEGORIES =		devel

HOMEPAGE =		http://code.google.com/p/yaml-cpp/

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += m stdc++

MASTER_SITES =		http://yaml-cpp.googlecode.com/files/

MODULES =		devel/cmake

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS=ON

WRKDIST =		${WRKDIR}/yaml-cpp

.include <bsd.port.mk>
