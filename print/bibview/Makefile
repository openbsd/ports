# $OpenBSD: Makefile,v 1.17 2007/09/15 21:36:44 merdely Exp $

COMMENT=	GUI for manipulating BibTeX bibliography databases

DISTNAME=	bibview-2.2
CATEGORIES=	databases print

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	Xmu Xaw X11 c Xt SM Xext ICE

MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=biblio/bibtex/utils/bibview-2.0/}

CONFIGURE_STYLE=imake
WRKDIST=	${WRKDIR}/bibview-2.2
USE_X11=	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
