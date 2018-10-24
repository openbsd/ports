# $OpenBSD: Makefile,v 1.7 2018/10/24 14:27:59 sthen Exp $

COMMENT =		unit testing framework

DISTNAME =		cpptest-1.1.2
REVISION =		3

SHARED_LIBS +=  cpptest                   0.0 # 0.7

CATEGORIES =		devel

HOMEPAGE =		http://cpptest.sourceforge.net/

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cpptest/}

CONFIGURE_STYLE =	gnu

do-test:
	${WRKSRC}/test/mytest

.include <bsd.port.mk>
