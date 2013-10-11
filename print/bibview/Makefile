# $OpenBSD: Makefile,v 1.24 2013/10/11 20:39:44 naddy Exp $

COMMENT=	GUI for manipulating BibTeX bibliography databases

DISTNAME=	bibview-2.2
REVISION=	3
CATEGORIES=	databases print

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xt c

MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=biblio/bibtex/utils/bibview-2.0/}

CONFIGURE_STYLE=imake
WRKDIST=	${WRKDIR}/bibview-2.2
USE_GROFF =	Yes

NO_TEST=	Yes

.include <bsd.port.mk>
