# $OpenBSD: Makefile,v 1.11 2000/03/13 18:57:14 espie Exp $
# $NetBSD: Makefile,v 1.25 1999/03/04 14:18:54 tron Exp $

DISTNAME=	netpbm-1mar1994
PKGNAME=	netpbm-19940301
CATEGORIES=	graphics
NEED_VERSION=	1.223
MASTER_SITES=	ftp://ftp.informatik.uni-oldenburg.de/pub/netpbm/
MASTER_SITES0=	ftp://ftp.informatik.uni-oldenburg.de/pub/netpbm/ \
		ftp://ftp.x.org/contrib/utilities/
MASTER_SITES1=	ftp://swrinde.nde.swri.edu/pub/png/applications/
DISTFILES=	${DISTNAME}.tar.gz:0 pcxtoppm.tar.gz rletopnm.tar.gz \
		pnmtopng-2.37.3.tar.gz:1

MAINTAINER=	brad@openbsd.org

PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_FTP=	Yes

# Jumble of licenses, some of them don't allow for commercial redistribution
# TODO: Sort out, maybe separate into two distinct packages ?
PERMIT_DISTFILES_CDROM=	No
PERMIT_PACKAGE_CDROM=	No

LIB_DEPENDS=	jpeg.62:graphics/jpeg \
		tiff.35:graphics/tiff \
		png.1.3:graphics/png

NO_CONFIGURE=	Yes
MAKE_ENV=	PREFIX=${PREFIX} MANCP="${INSTALL_MAN}"
FAKE=		Yes
FAKE_FLAGS= 	PREFIX=${WRKINST}${PREFIX} MANCP="${INSTALL_MAN}"

WRKDIST=	${WRKDIR}/netpbm

post-extract:
	@cd ${WRKSRC} && \
	  mv ../pnmtopng-2.37.3/* .. && \
	  mv ../*pcx*.? ppm && \
	  mv ../*rle*.? ../*png*.? pnm

.include <bsd.port.mk>
