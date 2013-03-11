# $OpenBSD: Makefile,v 1.9 2013/03/11 11:42:41 espie Exp $

COMMENT =	full-text search engine library
CATEGORIES =	textproc
DISTNAME =	clucene-core-2.3.3.4

REVISION =	0

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=clucene/}

HOMEPAGE = 	http://clucene.sourceforge.net/

SHARED_LIBS +=  clucene-contribs-lib      0.0 # 2.3
SHARED_LIBS +=  clucene-core              0.0 # 2.3
SHARED_LIBS +=  clucene-shared            0.0 # 2.3

# LGPL or Apache License 2.0
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m pthread stdc++ z

MODULES=	devel/cmake

BUILD_DEPENDS=	devel/boost

CONFIGURE_ARGS=	-DCMAKE_BUILD_TYPE=Release \
		-DBUILD_CONTRIBS_LIB:BOOL=ON

.include <bsd.port.mk>
