# $OpenBSD: Makefile,v 1.20 2012/03/20 16:23:47 dcoppa Exp $

COMMENT=	managing meta-data of audio formats
DISTNAME=	taglib-1.7.1
CATEGORIES=	audio devel

MASTER_SITES=	http://developer.kde.org/~wheeler/files/src/
SHARED_LIBS +=	tag                  9.0      # .1.7.1
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

CONFIGURE_ARGS+=-DCMAKE_BUILD_TYPE=Release \
		-DWITH_MP4=ON \
		-DWITH_ASF=ON \
		-DBUILD_TESTS=ON

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cmake/modules/FindCppUnit.cmake

do-regress:
	@ln -s ${WRKSRC}/tests/data ${WRKBUILD}/tests/data
	@cd ${WRKBUILD}/tests && ./test_runner

.include <bsd.port.mk>
