# $OpenBSD: Makefile,v 1.16 2017/07/27 11:01:33 sthen Exp $

COMMENT=	PDF, PS and EPS viewer for GNUstep

REVISION =	8
DISTNAME=	GSPdf-0.5

HOMEPAGE=	http://gap.nongnu.org/gspdf/
MASTER_SITES=	${MASTER_SITE_SAVANNAH:=gap/}

MODULES=	x11/gnustep
WANTLIB += ${COMPILER_LIBCXX}
RUN_DEPENDS+=	print/ghostscript/gnu

pre-build:
	${SUBST_CMD} ${WRKDIST}/GSPdf.m

.include <bsd.port.mk>
