# $OpenBSD: Makefile,v 1.7 1999/10/27 00:09:15 brad Exp $
# $NetBSD: Makefile,v 1.25 1999/03/04 14:18:54 tron Exp $

DISTNAME=	netpbm-1mar1994
PKGNAME=	netpbm-19940301
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.informatik.uni-oldenburg.de/pub/netpbm/
MASTER_SITES0=	ftp://ftp.informatik.uni-oldenburg.de/pub/netpbm/ \
		ftp://ftp.x.org/contrib/utilities/
MASTER_SITES1=	ftp://swrinde.nde.swri.edu/pub/png/applications/
DISTFILES=	${DISTNAME}.tar.gz:0 pcxtoppm.tar.gz rletopnm.tar.gz \
		pnmtopng-2.37.3.tar.gz:1

NEED_VERSION=	1.121

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	jpeg.62:${PORTSDIR}/graphics/jpeg \
		tiff.35:${PORTSDIR}/graphics/tiff \
		png.1.3:${PORTSDIR}/graphics/png

NO_CONFIGURE=	yes
MAKE_ENV=	PREFIX=${PREFIX} MANCP="${INSTALL_MAN}"

WRKSRC=	${WRKDIR}/netpbm

post-extract:
	@(cd ${WRKSRC} && \
	  ${MV} ../pnmtopng-2.37.3/* .. && \
	  ${MV} ../*pcx*.? ppm && \
	  ${MV} ../*rle*.? ../*png*.? pnm)

.include <bsd.port.mk>
