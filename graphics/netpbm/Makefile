# $OpenBSD: Makefile,v 1.4 1999/03/19 01:57:41 brad Exp $
# $NetBSD: Makefile,v 1.25 1999/03/04 14:18:54 tron Exp $

DISTNAME=	netpbm-1mar1994
PKGNAME=	netpbm-19940301
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.wustl.edu/graphics/graphics/packages/NetPBM/ \
		ftp://ftp.informatik.uni-oldenburg.de/pub/netpbm/

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} pcxtoppm.tar.gz rletopnm.tar.gz pnmtopng-2.37.1.tar.gz

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	tiff:${PORTSDIR}/graphics/tiff34 \
		jpeg:${PORTSDIR}/graphics/jpeg \
		png:${PORTSDIR}/graphics/png

WRKSRC=		${WRKDIR}/netpbm
MAKE_ENV +=	PREFIX=${PREFIX} MANCP="${INSTALL_MAN}"
NO_CONFIGURE=	yes

post-extract:
	cd ${WRKSRC}; \
	${MV} ../*pcx*.? ppm; \
	${MV} ../*rle*.? ../*png*.? pnm;

.include <bsd.port.mk>
