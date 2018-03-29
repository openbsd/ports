# $OpenBSD: Makefile,v 1.17 2018/03/29 19:47:12 landry Exp $

COMMENT=	cartographic projection utilities

DISTNAME=	proj-5.0.0
CATEGORIES=	devel geo
SHARED_LIBS=	proj 8.0 # 12.0

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		proj-datumgrid-1.7${EXTRACT_SUFX}

HOMEPAGE=	http://proj4.org

MAINTAINER=	Landry Breuil <landry@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://download.osgeo.org/proj/

CONFIGURE_STYLE=	gnu
WANTLIB=		c m pthread
CONFIGURE_ENV=		LDFLAGS='-pthread'

# needed for tests only..
USE_GMAKE =	Yes

GRIDS = BETA2007.gsb nzgd2kgrid0005.gsb ntv1_can.dat ntf_r93.gsb egm96_15.gtx \
	stpaul stlrnc stgeorge prvi null hawaii conus alaska WO WI TN MD FL

post-extract:
.for f in ${GRIDS}
	@mv ${WRKDIR}/${f} ${WRKSRC}/nad
.endfor

.include <bsd.port.mk>
