# $OpenBSD: Makefile,v 1.42 2018/05/16 20:37:14 sthen Exp $

COMMENT=	managing meta-data of audio formats
DISTNAME=	taglib-1.11.1
REVISION=	0

CATEGORIES=	audio devel

SHARED_LIBS +=	tag	12.0	# 1.9.1
SHARED_LIBS +=	tag_c	3.0	# 0.0.0

HOMEPAGE= 	https://taglib.github.io/

# LGPLv2.1 / MPLv1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	${COMPILER_LIBCXX} m z

MASTER_SITES=	https://taglib.github.io/releases/

MODULES=	devel/cmake
BUILD_DEPENDS=	devel/boost

CONFIGURE_ARGS=	-DBUILD_SHARED_LIBS:BOOL=ON

NO_TEST=	Yes

.include <bsd.port.mk>
