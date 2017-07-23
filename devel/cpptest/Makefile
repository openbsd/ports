# $OpenBSD: Makefile,v 1.5 2017/07/23 09:26:26 espie Exp $

COMMENT =		unit testing framework

DISTNAME =		cpptest-1.1.2
REVISION =		1

SHARED_LIBS +=  cpptest                   0.0 # 0.7

CATEGORIES =		devel

HOMEPAGE =		http://cpptest.sourceforge.net/

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m ${COMPILER_LIBCXX}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cpptest/}

CONFIGURE_STYLE =	gnu

do-test:
	${WRKSRC}/test/mytest

.include <bsd.port.mk>
