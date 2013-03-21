# $OpenBSD: Makefile,v 1.6 2013/03/21 08:45:15 ajacoutot Exp $

COMMENT =	C++ unit test framework

DISTNAME =	gtest-1.4.0
REVISION =	0

SHARED_LIBS +=	gtest		0.0   # .0.0
SHARED_LIBS +=	gtest_main	0.0   # .0.0

CATEGORIES =	devel

HOMEPAGE =	http://code.google.com/p/googletest/

MAINTAINER =	Vincent Auclair <auclair.vincent@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	http://googletest.googlecode.com/files/

SEPARATE_BUILD =	Yes

WANTLIB =		m stdc++

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

NO_TEST =	Yes

.include <bsd.port.mk>
