COMMENT=	CUPS drivers for SPL printers

GH_ACCOUNT=	OpenPrinting
GH_PROJECT=	splix
GH_COMMIT=	47a05b3f98a60de8442168db8f9f12bb1c342575
DISTNAME=	splix-2.0.2pre20251018

CATEGORIES=	print

HOMEPAGE=	https://openprinting.github.io/splix/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c cups cupsimage jbig85 m

COMPILER=	base-clang ports-gcc base-gcc

LIB_DEPENDS=	print/cups,-libs \
		graphics/jbigkit

# gstoraster
RUN_DEPENDS=	print/cups-filters

USE_GMAKE=	Yes
NO_TEST=	Yes
ALL_TARGET=	drv all

MAKE_FLAGS=	V=1 \
		MAKE=${MAKE_PROGRAM} \
		CXX=${CXX} \
		OPTIM_CXXFLAGS="${CXXFLAGS}" \
		PSTORASTER=gstoraster \
		CUPSDRV=${PREFIX}/share/cups/drv/splix \
		DRV_ONLY=1

.include <bsd.port.mk>
