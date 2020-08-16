# $OpenBSD: Makefile,v 1.20 2020/08/16 20:35:19 sebastia Exp $

COMMENT=	PDF, PS and EPS viewer for GNUstep

REVISION =	12
DISTNAME=	GSPdf-0.5

HOMEPAGE=	http://gap.nongnu.org/gspdf/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES=	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}
RUN_DEPENDS+=	print/ghostscript/gnu

pre-build:
	${SUBST_CMD} ${WRKDIST}/GSPdf.m

.include <bsd.port.mk>
