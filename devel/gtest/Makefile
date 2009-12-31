# $OpenBSD: Makefile,v 1.1.1.1 2009/12/31 11:21:13 landry Exp $

COMMENT =	C++ unit test framework

DISTNAME =	gtest-1.4.0

SHARED_LIBS +=	gtest		0.0   # .0.0
SHARED_LIBS +=	gtest_main	0.0   # .0.0

CATEGORIES =	devel

HOMEPAGE =	http://code.google.com/p/googletest/

MAINTAINER =	Vincent Auclair <auclair.vincent@gmail.com>

# New BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://googletest.googlecode.com/files/

SEPARATE_BUILD =	simple

USE_LIBTOOL =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED}

NO_REGRESS =	Yes

.include <bsd.port.mk>
