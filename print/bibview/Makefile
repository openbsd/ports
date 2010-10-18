# $OpenBSD: Makefile,v 1.21 2010/10/18 21:25:08 espie Exp $

COMMENT=	GUI for manipulating BibTeX bibliography databases

DISTNAME=	bibview-2.2
REVISION=	2
CATEGORIES=	databases print

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xau Xaw Xdmcp Xext Xmu Xt c

MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=biblio/bibtex/utils/bibview-2.0/}

CONFIGURE_STYLE=imake
WRKDIST=	${WRKDIR}/bibview-2.2
USE_X11=	Yes
USE_GROFF =	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
