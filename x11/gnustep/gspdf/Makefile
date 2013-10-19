# $OpenBSD: Makefile,v 1.10 2013/10/19 13:25:00 sebastia Exp $

COMMENT=	PDF, PS and EPS viewer for GNUstep

DISTNAME=	GSPdf-0.5
REVISION =	2

HOMEPAGE=	http://gap.nongnu.org/gspdf/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES=	x11/gnustep
WANTLIB+=	c m pthread
RUN_DEPENDS+=	print/ghostscript/gnu

pre-build:
	${SUBST_CMD} ${WRKDIST}/GSPdf.m 

.include <bsd.port.mk>
