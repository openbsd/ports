# $OpenBSD: Makefile,v 1.2 2010/11/22 08:36:59 espie Exp $

COMMENT=	PDF, PS and EPS viewer for GNUstep

DISTNAME=	GSPdf-0.3
PKGNAME=	${DISTNAME:L}

HOMEPAGE=	http://gap.nongnu.org/gspdf/
MASTER_SITES=	http://savannah.nongnu.org/download/gap/

MODULES=	x11/gnustep
WANTLIB+=	c m pthread
RUN_DEPENDS+=	print/ghostscript/gnu

pre-build:
	${SUBST_CMD} ${WRKDIST}/GSPdf.m 

.include <bsd.port.mk>
