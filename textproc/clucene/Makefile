# $OpenBSD: Makefile,v 1.7 2012/08/30 18:41:09 ajacoutot Exp $

COMMENT =	full-text search engine library
CATEGORIES =	textproc
DISTNAME =	clucene-core-2.3.3.4

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=clucene/}

HOMEPAGE = 	http://clucene.sourceforge.net/

SHARED_LIBS +=  clucene-contribs-lib      0.0 # 2.3
SHARED_LIBS +=  clucene-core              0.0 # 2.3
SHARED_LIBS +=  clucene-shared            0.0 # 2.3

# LGPL or Apache License 2.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += m pthread stdc++ z

MODULES=	devel/cmake

BUILD_DEPENDS=	devel/boost

CONFIGURE_ARGS=	-DCMAKE_BUILD_TYPE=Release \
		-DBUILD_CONTRIBS_LIB:BOOL=ON

.include <bsd.port.mk>
