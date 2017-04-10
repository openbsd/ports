# $OpenBSD: Makefile,v 1.2 2017/04/10 11:46:34 sthen Exp $

COMMENT =		simple, small and efficient C++ XML parser

V =			3.0.0
DISTNAME =		tinyxml2-$V

SHARED_LIBS +=  tinyxml2                  0.0 # 3.0

CATEGORIES =		textproc

HOMEPAGE =		http://www.grinninglizard.com/tinyxml2/index.html

# zlib
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m ${LIBCXX}

GH_ACCOUNT =		leethomason
GH_PROJECT =		tinyxml2
GH_TAGNAME =		$V

MODULES =		devel/cmake

do-test:
	cd ${WRKSRC} && ${CXX} xmltest.cpp tinyxml2.cpp tinyxml2.h && ./a.out

.include <bsd.port.mk>
