# $OpenBSD: Makefile,v 1.5 1999/03/25 04:58:06 marc Exp $
# $NetBSD: Makefile,v 1.25 1999/03/04 14:18:54 tron Exp $

DISTNAME=	netpbm-1mar1994
PKGNAME=	netpbm-19940301
CATEGORIES=	graphics

MAINTAINER=	brad@openbsd.org

MASTER_SITES=	ftp://ftp.informatik.uni-oldenburg.de/pub/netpbm/ \
		ftp://swrinde.nde.swri.edu/pub/png/applications/ \
		ftp://ftp.x.org/contrib/utilities/
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} pcxtoppm.tar.gz rletopnm.tar.gz \
		pnmtopng-2.37.2.tar.gz

LIB_DEPENDS=	tiff:${PORTSDIR}/graphics/tiff34 \
		jpeg:${PORTSDIR}/graphics/jpeg \
		png:${PORTSDIR}/graphics/png

WRKSRC=		${WRKDIR}/netpbm
MAKE_ENV +=	PREFIX=${PREFIX} MANCP="${INSTALL_MAN}"
NO_CONFIGURE=	yes

post-extract:
	@(cd ${WRKSRC} && \
	  ${MV} ../pnmtopng-2.37.2/* .. && \
	  ${MV} ../*pcx*.? ppm && \
	  ${MV} ../*rle*.? ../*png*.? pnm)

.include <bsd.port.mk>
