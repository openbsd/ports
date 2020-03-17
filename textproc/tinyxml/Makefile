# $OpenBSD: Makefile,v 1.11 2020/03/17 10:37:25 jca Exp $

COMMENT=	simple and small C++ XML parser

V=		2.6.2
REVISION =	4
DISTNAME=	tinyxml_${V:S/./_/g}
PKGNAME=	tinyxml-${V}
EXTRACT_SUFX=	.zip

SHARED_LIBS=	tinyxml 1.0

CATEGORIES=	textproc

HOMEPAGE=	http://www.grinninglizard.com/tinyxml/

# zlib license
PERMIT_PACKAGE=	Yes

WANTLIB += m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tinyxml/}

USE_GMAKE=	Yes

WRKDIST=	${WRKDIR}/tinyxml

MAKE_FLAGS=	CC="${CC}" \
		CXX="${CXX}" \
		LD="${CXX}" \
		RELEASE_CXXFLAGS="-fPIC ${CXXFLAGS}" \
		LDFLAGS="${LDFLAGS}" \
		LIBtinyxml_VERSION=${LIBtinyxml_VERSION}

do-install:
	${INSTALL_DATA} ${WRKBUILD}/libtinyxml.so.${LIBtinyxml_VERSION} \
		${PREFIX}/lib
	${INSTALL_DATA} ${WRKBUILD}/tinyxml.h \
		${PREFIX}/include

.include <bsd.port.mk>
