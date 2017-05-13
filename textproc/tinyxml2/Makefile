# $OpenBSD: Makefile,v 1.3 2017/05/13 14:11:59 benoit Exp $

COMMENT =		simple, small and efficient C++ XML parser

V =			4.0.1
DISTNAME =		tinyxml2-$V

SHARED_LIBS +=		tinyxml2	1.0 # 3.0

CATEGORIES =		textproc

HOMEPAGE =		http://www.grinninglizard.com/tinyxml2/index.html

# zlib
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		m ${LIBCXX}

GH_ACCOUNT =		leethomason
GH_PROJECT =		tinyxml2
GH_TAGNAME =		$V

MODULES =		devel/cmake

do-test:
	cd ${WRKSRC} && ${CXX} xmltest.cpp tinyxml2.cpp tinyxml2.h && ./a.out

.include <bsd.port.mk>
