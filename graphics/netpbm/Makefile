# $OpenBSD: Makefile,v 1.6 1999/06/01 22:36:26 brad Exp $
# $NetBSD: Makefile,v 1.25 1999/03/04 14:18:54 tron Exp $

DISTNAME=	netpbm-1mar1994
PKGNAME=	netpbm-19940301
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.informatik.uni-oldenburg.de/pub/netpbm/ \
		ftp://swrinde.nde.swri.edu/pub/png/applications/ \
		ftp://ftp.x.org/contrib/utilities/
DISTFILES=	${DISTNAME}.tar.gz pcxtoppm.tar.gz rletopnm.tar.gz \
		pnmtopng-2.37.2.tar.gz

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	jpeg.62:${PORTSDIR}/graphics/jpeg \
		tiff.3.4:${PORTSDIR}/graphics/tiff34 \
		png.1.3:${PORTSDIR}/graphics/png

WRKSRC=		${WRKDIR}/netpbm
MAKE_ENV +=	PREFIX=${PREFIX} MANCP="${INSTALL_MAN}"
NO_CONFIGURE=	yes

post-extract:
	@(cd ${WRKSRC} && \
	  ${MV} ../pnmtopng-2.37.2/* .. && \
	  ${MV} ../*pcx*.? ppm && \
	  ${MV} ../*rle*.? ../*png*.? pnm)

.include <bsd.port.mk>
