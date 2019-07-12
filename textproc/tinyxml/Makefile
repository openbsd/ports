# $OpenBSD: Makefile,v 1.10 2019/07/12 20:50:16 sthen Exp $

COMMENT=	simple and small C++ XML parser

V=		2.6.2
REVISION =	3
DISTNAME=	tinyxml_${V:S/./_/g}
PKGNAME=	tinyxml-${V}
EXTRACT_SUFX=	.zip

SHARED_LIBS=	tinyxml 0.0

CATEGORIES=	textproc

HOMEPAGE=	http://www.grinninglizard.com/tinyxml/

# zlib license
PERMIT_PACKAGE=	Yes

WANTLIB += m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tinyxml/}

WRKDIST=	${WRKDIR}/tinyxml
NO_TEST=	Yes

do-build:
.for i in tinyxml.cpp tinystr.cpp tinyxmlerror.cpp tinyxmlparser.cpp
	cd ${WRKBUILD} && ${CXX} ${CXXFLAGS} -fPIC -o $i.o -c $i
.endfor
	cd ${WRKBUILD} &&  ${CXX} ${CXXFLAGS} -shared -o libtinyxml.so.${LIBtinyxml_VERSION} *.cpp.o

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libtinyxml.so.${LIBtinyxml_VERSION} \
		${PREFIX}/lib
	${INSTALL_DATA} ${WRKBUILD}/tinyxml.h \
		${PREFIX}/include

.include <bsd.port.mk>
