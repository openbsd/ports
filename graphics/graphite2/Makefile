COMMENT=	rendering for complex writing systems

V=		1.3.15
DISTNAME=	graphite2-${V}
EXTRACT_SUFX=	.tgz

SHARED_LIBS=	graphite2 2.0 # 3.0.1

CATEGORIES=	graphics

HOMEPAGE=	https://graphite.sil.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

SITES=		https://github.com/silnrsi/graphite/releases/download/${V}/

MODULES=	devel/cmake \
		lang/python

# c++11
COMPILER=	base-clang ports-gcc

MODPY_BUILDDEP=	No
MODPY_RUNDEP=	No

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

# XXX needs py-fontTools (not ported)
TEST_DEPENDS=	${MODPY_RUN_DEPENDS}

# XXX push upstream: collides with swap32(3)
pre-configure:
	sed -i 's,swap32,gr_swap32,g' ${WRKSRC}/tests/comparerenderer/FeatureParser.h

.include <bsd.port.mk>
