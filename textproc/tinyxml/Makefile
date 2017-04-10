# $OpenBSD: Makefile,v 1.5 2017/04/10 11:46:34 sthen Exp $

COMMENT=	simple and small C++ XML parser

V=		2.6.2
REVISION=	0
DISTNAME=	tinyxml_${V:S/./_/g}
PKGNAME=	tinyxml-${V}
EXTRACT_SUFX=	.zip

SHARED_LIBS=	tinyxml 0.0

CATEGORIES=	textproc

HOMEPAGE=	http://www.grinninglizard.com/tinyxml/

# zlib license
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m ${LIBCXX}

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
