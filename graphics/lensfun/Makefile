# $OpenBSD: Makefile,v 1.29 2019/07/12 20:47:01 sthen Exp $

COMMENT=	library to adjust for photographic lens characteristics
DISTNAME=	lensfun-0.3.2
REVISION=	4

SHARED_LIBS=	lensfun	2.0

CATEGORIES=	graphics
HOMEPAGE=	http://lensfun.sourceforge.net/

# library LGPLv3, lens db CC-BY-SA, build infrastructure/applications GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += c glib-2.0 m png ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=lensfun/}

MODULES=		devel/cmake \
			lang/python

MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}
MODPY_RUNDEP=		No

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
