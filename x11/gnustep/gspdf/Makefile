# $OpenBSD: Makefile,v 1.15 2016/06/03 11:57:57 sebastia Exp $

COMMENT=	PDF, PS and EPS viewer for GNUstep

REVISION =	7
DISTNAME=	GSPdf-0.5

HOMEPAGE=	http://gap.nongnu.org/gspdf/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES=	x11/gnustep
RUN_DEPENDS+=	print/ghostscript/gnu

pre-build:
	${SUBST_CMD} ${WRKDIST}/GSPdf.m

.include <bsd.port.mk>
