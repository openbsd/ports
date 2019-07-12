# $OpenBSD: Makefile,v 1.8 2019/07/12 20:50:00 sthen Exp $

COMMENT=	LaTeX documents output generation automation tool

DISTNAME=	latexmk-452c
EXTRACT_SUFX=	.zip
REVISION=	0

CATEGORIES=	textproc print

HOMEPAGE=	http://www.phys.psu.edu/~collins/software/latexmk-jcc/

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	print/texlive/base

WRKDIST=	${WRKDIR}/latexmk
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/latexmk.pl ${PREFIX}/bin/latexmk
	${INSTALL_MAN} ${WRKSRC}/latexmk.1 ${PREFIX}/man/man1
	
.include <bsd.port.mk>
