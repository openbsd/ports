# $OpenBSD: Makefile,v 1.11 2014/05/22 09:48:56 sebastia Exp $

COMMENT=	PDF, PS and EPS viewer for GNUstep

DISTNAME=	GSPdf-0.5
REVISION =	3

HOMEPAGE=	http://gap.nongnu.org/gspdf/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES=	x11/gnustep
RUN_DEPENDS+=	print/ghostscript/gnu

pre-build:
	${SUBST_CMD} ${WRKDIST}/GSPdf.m

.include <bsd.port.mk>
