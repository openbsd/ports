# $OpenBSD: Makefile,v 1.30 2013/01/27 21:28:25 dcoppa Exp $

COMMENT=	managing meta-data of audio formats
DISTNAME=	taglib-1.8
REVISION=	5
CATEGORIES=	audio devel

MASTER_SITES=	https://github.com/downloads/taglib/taglib/

SHARED_LIBS +=	tag	10.0	# 1.8.0
SHARED_LIBS +=	tag_c	2.1	# 0.0.0

HOMEPAGE= 	http://taglib.github.com/

# LGPLv2.1 / MPLv1.1
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	devel/cmake

WANTLIB=	stdc++ m z

BUILD_DEPENDS=	devel/cppunit

CONFIGURE_ARGS+=-DCMAKE_BUILD_TYPE=Release \
		-DBUILD_TESTS=ON

pre-configure:
	${SUBST_CMD} ${WRKSRC}/cmake/modules/FindCppUnit.cmake

do-regress:
	@ln -f -s ${WRKSRC}/tests/data ${WRKBUILD}/tests/data
	@cd ${WRKBUILD}/tests && ./test_runner

.include <bsd.port.mk>
