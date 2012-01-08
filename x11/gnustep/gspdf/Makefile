# $OpenBSD: Makefile,v 1.6 2012/01/08 12:03:09 sebastia Exp $

COMMENT=	PDF, PS and EPS viewer for GNUstep

DISTNAME=	GSPdf-0.4
REVISION =	0

HOMEPAGE=	http://gap.nongnu.org/gspdf/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES=	x11/gnustep
WANTLIB+=	c m pthread
RUN_DEPENDS+=	print/ghostscript/gnu

pre-build:
	${SUBST_CMD} ${WRKDIST}/GSPdf.m 

.include <bsd.port.mk>
