# $OpenBSD: Makefile,v 1.28 2019/07/12 20:48:54 sthen Exp $

COMMENT=	GUI for manipulating BibTeX bibliography databases

DISTNAME=	bibview-2.2
REVISION=	5
CATEGORIES=	databases print

FIX_EXTRACT_PERMISSIONS=Yes

PERMIT_PACKAGE=	Yes

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xt c

MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=biblio/bibtex/utils/bibview-2.0/}

CONFIGURE_STYLE=imake
WRKDIST=	${WRKDIR}/bibview-2.2

NO_TEST=	Yes

.include <bsd.port.mk>
