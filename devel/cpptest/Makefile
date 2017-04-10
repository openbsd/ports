# $OpenBSD: Makefile,v 1.3 2017/04/10 11:45:25 sthen Exp $

COMMENT =		unit testing framework

DISTNAME =		cpptest-1.1.2
REVISION =		0

SHARED_LIBS +=  cpptest                   0.0 # 0.7

CATEGORIES =		devel

HOMEPAGE =		http://cpptest.sourceforge.net/

# LGPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m ${LIBCXX}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=cpptest/}

CONFIGURE_STYLE =	gnu

do-test:
	${WRKSRC}/test/mytest

.include <bsd.port.mk>
