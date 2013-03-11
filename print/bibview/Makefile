# $OpenBSD: Makefile,v 1.23 2013/03/11 11:37:53 espie Exp $

COMMENT=	GUI for manipulating BibTeX bibliography databases

DISTNAME=	bibview-2.2
REVISION=	2
CATEGORIES=	databases print

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xt c

MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=biblio/bibtex/utils/bibview-2.0/}

CONFIGURE_STYLE=imake
WRKDIST=	${WRKDIR}/bibview-2.2
USE_GROFF =	Yes

NO_TEST=	Yes

.include <bsd.port.mk>
