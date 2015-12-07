# $OpenBSD: Makefile,v 1.1.1.1 2015/12/07 10:08:21 bentley Exp $

COMMENT =		simple, small and efficient C++ XML parser

V =			3.0.0
DISTNAME =		tinyxml2-$V

SHARED_LIBS +=  tinyxml2                  0.0 # 3.0

CATEGORIES =		textproc

HOMEPAGE =		http://www.grinninglizard.com/tinyxml2/index.html

# zlib
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m stdc++

GH_ACCOUNT =		leethomason
GH_PROJECT =		tinyxml2
GH_TAGNAME =		$V

MODULES =		devel/cmake

do-test:
	cd ${WRKSRC} && ${CXX} xmltest.cpp tinyxml2.cpp tinyxml2.h && ./a.out

.include <bsd.port.mk>
