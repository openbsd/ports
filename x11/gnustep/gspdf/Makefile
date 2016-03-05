# $OpenBSD: Makefile,v 1.14 2016/03/05 16:04:08 pascal Exp $

COMMENT=	PDF, PS and EPS viewer for GNUstep

REVISION =	6
DISTNAME=	GSPdf-0.5

HOMEPAGE=	http://gap.nongnu.org/gspdf/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES=	x11/gnustep
RUN_DEPENDS+=	print/ghostscript/gnu

pre-build:
	${SUBST_CMD} ${WRKDIST}/GSPdf.m

.include <bsd.port.mk>
