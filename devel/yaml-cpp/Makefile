# $OpenBSD: Makefile,v 1.1.1.1 2011/05/11 16:55:30 ajacoutot Exp $

COMMENT =		YAML parser and emitter in C++
DISTNAME =		yaml-cpp-0.2.6

SHARED_LIBS =		yaml-cpp	0.0 # 0.2

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
