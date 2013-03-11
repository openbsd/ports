# $OpenBSD: Makefile,v 1.2 2013/03/11 11:42:42 espie Exp $

COMMENT=	LaTeX documents output generation automation tool

DISTNAME=	latexmk-431
EXTRACT_SUFX=	.zip

CATEGORIES=	textproc print

HOMEPAGE=	http://www.phys.psu.edu/~collins/software/latexmk-jcc/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	print/texlive/base

WRKDIST=	${WRKDIR}
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/latexmk.pl ${PREFIX}/bin/latexmk
	${INSTALL_MAN} ${WRKSRC}/latexmk.1 ${PREFIX}/man/man1
	
.include <bsd.port.mk>
