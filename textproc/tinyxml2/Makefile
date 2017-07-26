# $OpenBSD: Makefile,v 1.7 2017/07/26 22:45:31 sthen Exp $

COMMENT =		simple, small and efficient C++ XML parser

V =			4.0.1
DISTNAME =		tinyxml2-$V
REVISION =		1

SHARED_LIBS +=		tinyxml2	1.0 # 3.0

CATEGORIES =		textproc

HOMEPAGE =		http://www.grinninglizard.com/tinyxml2/index.html

# zlib
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		m ${COMPILER_LIBCXX}

GH_ACCOUNT =		leethomason
GH_PROJECT =		tinyxml2
GH_TAGNAME =		$V

MODULES =		devel/cmake

pre-patch:
	perl -i -pe 's/\r$$//' ${WRKSRC}/xmltest.cpp

do-test:
	cd ${WRKSRC} && ${CXX} xmltest.cpp tinyxml2.cpp tinyxml2.h && ./a.out

.include <bsd.port.mk>
