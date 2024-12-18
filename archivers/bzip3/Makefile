COMMENT=	compress and decompress bzip3 files

V=		1.5.1
DISTNAME=	bzip3-${V}

SHARED_LIBS +=  bzip3                1.0      # 0.0

CATEGORIES=	archivers

HOMEPAGE=	https://github.com/kspalaiologos/bzip3

# LGPLv3
PERMIT_PACKAGE=	Yes

WANTLIB=	c pthread

SITES=		${HOMEPAGE}/releases/download/${V}/

SITES.e=	${HOMEPAGE}/raw/refs/tags/${V}/examples/
DISTFILES.e+=	${DISTNAME}-{}shakespeare.txt \
		${DISTNAME}-{}shakespeare.txt.bz3

EXTRACT_ONLY=	${DISTFILES}

CONFIGURE_STYLE=gnu

TEST_TARGET=	test

pre-test:
	@mkdir -p ${WRKSRC}/examples/
	@ln -s ${FULLDISTDIR}/${DISTNAME}-shakespeare.txt \
		${WRKSRC}/examples/shakespeare.txt
	@ln -s ${FULLDISTDIR}/${DISTNAME}-shakespeare.txt.bz3 \
		${WRKSRC}/examples/shakespeare.txt.bz3

.include <bsd.port.mk>
