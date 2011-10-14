# $OpenBSD: Makefile,v 1.16 2011/10/14 09:14:03 dcoppa Exp $

COMMENT=	managing meta-data of audio formats
DISTNAME=	taglib-1.7
CATEGORIES=	audio devel

MASTER_SITES=	http://developer.kde.org/~wheeler/files/src/
SHARED_LIBS +=	tag                  8.1      # .1.7.0
SHARED_LIBS +=	tag_c                2.0      # .0.0.0

HOMEPAGE= 	http://developer.kde.org/~wheeler/taglib.html

# LGPLv2.1 / MPLv1.1
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	devel/cmake

USE_LIBTOOL=	Yes

WANTLIB=	stdc++ m z

BUILD_DEPENDS=	devel/cppunit

CONFIGURE_STYLE=cmake
CONFIGURE_ARGS+=-DCMAKE_BUILD_TYPE=Release \
		-DWITH_MP4=ON \
		-DWITH_ASF=ON \
		-DBUILD_TESTS=ON

REGRESS_DEPENDS=${BUILD_DEPENDS}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cmake/modules/FindCppUnit.cmake

do-regress:
	@cd ${WRKBUILD}/tests && ./test_runner

.include <bsd.port.mk>
