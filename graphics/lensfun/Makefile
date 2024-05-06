COMMENT=	library to adjust for photographic lens characteristics
GH_ACCOUNT=	lensfun
GH_PROJECT=	lensfun
GH_TAGNAME=	v0.3.3
REVISION=	0

SHARED_LIBS=	lensfun	2.1

CATEGORIES=	graphics
HOMEPAGE=	https://lensfun.github.io/

# library LGPLv3, lens db CC-BY-SA, build infrastructure/applications GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += c glib-2.0 m png ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		devel/cmake \
			lang/python

MODPY_RUNDEP=		No

BUILD_DEPENDS=		devel/py-setuptools${MODPY_FLAVOR}

LIB_DEPENDS=		devel/glib2 \
			graphics/png

CONFIGURE_ARGS=		-DBUILD_DOC=No \
			-DBUILD_LENSTOOL=Yes \
			-DBUILD_TESTS=Yes

DOC_DIR=		${PREFIX}/share/doc/lensfun

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/docs/*-3.0.txt ${DOC_DIR}

.include <bsd.port.arch.mk>
.if !${ARCH:Mamd64}
CONFIGURE_ARGS+=	-DBUILD_FOR_SSE=OFF
CONFIGURE_ARGS+=	-DBUILD_FOR_SSE2=OFF
.endif

.include <bsd.port.mk>
