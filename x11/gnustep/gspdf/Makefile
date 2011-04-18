# $OpenBSD: Makefile,v 1.4 2011/04/18 12:00:52 sebastia Exp $

COMMENT=	PDF, PS and EPS viewer for GNUstep

DISTNAME=	GSPdf-0.4
REVISION =	0
PKGNAME=	${DISTNAME:L}

HOMEPAGE=	http://gap.nongnu.org/gspdf/
MASTER_SITES=	http://savannah.nongnu.org/download/gap/

MODULES=	x11/gnustep
WANTLIB+=	c m pthread
RUN_DEPENDS+=	print/ghostscript/gnu

pre-build:
	${SUBST_CMD} ${WRKDIST}/GSPdf.m 

.include <bsd.port.mk>
