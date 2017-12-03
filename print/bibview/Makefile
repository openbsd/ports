# $OpenBSD: Makefile,v 1.26 2017/12/03 12:37:22 espie Exp $

COMMENT=	GUI for manipulating BibTeX bibliography databases

DISTNAME=	bibview-2.2
REVISION=	4
CATEGORIES=	databases print
FIX_EXTRACT_PERMISSIONS=Yes

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xt c

MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=biblio/bibtex/utils/bibview-2.0/}

CONFIGURE_STYLE=imake
WRKDIST=	${WRKDIR}/bibview-2.2

NO_TEST=	Yes

.include <bsd.port.mk>
