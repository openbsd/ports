# $OpenBSD: Makefile,v 1.25 2020/04/02 11:11:01 ajacoutot Exp $

COMMENT=	rendering for complex writing systems

DISTNAME=	graphite2-1.3.14
EXTRACT_SUFX=	.tgz

SHARED_LIBS=	graphite2 2.0 # 3.0.1

CATEGORIES=	graphics

HOMEPAGE=	http://scripts.sil.org/cms/scripts/page.php?site_id=projects&item_id=graphite_home

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=silgraphite/}

MODULES=	devel/cmake \
		lang/python

# c++11
COMPILER=	base-clang ports-gcc

MODPY_BUILDDEP=	No
MODPY_RUNDEP=	No
MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

# XXX needs py-fontTools (not ported)
TEST_DEPENDS=	${MODPY_RUN_DEPENDS}

# XXX push upstream: collides with swap32(3)
pre-configure:
	sed -i 's,swap32,gr_swap32,g' ${WRKSRC}/tests/comparerenderer/FeatureParser.h

.include <bsd.port.mk>
