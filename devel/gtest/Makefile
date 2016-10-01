# $OpenBSD: Makefile,v 1.11 2016/10/01 11:54:15 naddy Exp $

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

MASTER_SITES =	${MASTER_SITE_GOOGLECODE:=googletest/}

SEPARATE_BUILD =	Yes

WANTLIB =		m stdc++

CONFIGURE_STYLE =	gnu

NO_TEST =	Yes

.include <bsd.port.mk>
