# $OpenBSD: Makefile,v 1.17 2019/07/12 20:49:57 sthen Exp $

COMMENT =	full-text search engine library
CATEGORIES =	textproc
DISTNAME =	clucene-core-2.3.3.4

REVISION =	3

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=clucene/}

HOMEPAGE = 	http://clucene.sourceforge.net/

SHARED_LIBS +=  clucene-contribs-lib      0.0 # 2.3
SHARED_LIBS +=  clucene-core              0.0 # 2.3
SHARED_LIBS +=  clucene-shared            0.0 # 2.3

# LGPL or Apache License 2.0
PERMIT_PACKAGE =	Yes

WANTLIB += m pthread ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=	devel/cmake

BUILD_DEPENDS=	devel/boost

CONFIGURE_ARGS=	-DBUILD_CONTRIBS_LIB:BOOL=ON

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mclang}
CXXFLAGS +=	-std=c++03
.endif

.include <bsd.port.mk>
