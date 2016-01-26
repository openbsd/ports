# $OpenBSD: Makefile,v 1.9 2016/01/26 13:05:26 sthen Exp $

COMMENT =	C++ unit test framework

DISTNAME =	gtest-1.4.0
REVISION =	3

SHARED_LIBS +=	gtest		0.0   # .0.0
SHARED_LIBS +=	gtest_main	0.0   # .0.0

CATEGORIES =	devel

HOMEPAGE =	https://github.com/google/googletest

MAINTAINER =	Vincent Auclair <auclair.vincent@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://googletest.googlecode.com/files/

SEPARATE_BUILD =	Yes

WANTLIB =		m stdc++

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

NO_TEST =	Yes

.include <bsd.port.mk>
