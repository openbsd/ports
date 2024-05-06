COMMENT=	open-source subdivision surface library

V=		3.5.0
GH_ACCOUNT=	PixarAnimationStudios
GH_PROJECT=	OpenSubdiv
GH_TAGNAME=	v${V:S/./_/g}
DISTNAME=	${GH_PROJECT:L}-${V}
REVISION=	1

SHARED_LIBS +=	osdCPU		2.0 # 3.4.4
SHARED_LIBS +=	osdGPU		2.0 # 3.4.4

CATEGORIES=	graphics

HOMEPAGE=	https://graphics.pixar.com/opensubdiv/

# APACHE 2.0
PERMIT_PACKAGE=	Yes

WANTLIB +=	${COMPILER_LIBCXX} GL c m tbb

COMPILER=	base-clang ports-gcc

MODULES=	devel/cmake \
		lang/python

MODPY_RUNDEP=	No

BUILD_DEPENDS=	graphics/glfw

LIB_DEPENDS=	devel/tbb

CONFIGURE_ARGS=	-DNO_DOC=ON \
		-DNO_OMP=ON

post-install:
	rm -rf ${PREFIX}/bin/tutorials
	rm ${PREFIX}/bin/{far,gl,hbr,osd}*

.include <bsd.port.mk>
