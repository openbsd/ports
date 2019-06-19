# $OpenBSD: Makefile,v 1.8 2019/06/19 05:22:32 rsadowski Exp $

COMMENT =		unit testing framework

V =			2.0.0
DISTNAME =		cpptest-${V}

SHARED_LIBS +=  cpptest                   1.0 # 0.7

CATEGORIES =		devel

HOMEPAGE =		https://cpptest.sourceforge.io

# LGPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += m ${COMPILER_LIBCXX}

MASTER_SITES =	https://github.com/cpptest/cpptest/releases/download/${V}/

# C++11
COMPILER =		base-clang ports-gcc

CONFIGURE_STYLE =	gnu

do-test:
	${WRKSRC}/test/mytest

.include <bsd.port.mk>
