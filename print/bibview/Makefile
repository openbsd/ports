# $OpenBSD: Makefile,v 1.18 2009/03/12 18:13:54 sthen Exp $

COMMENT=	GUI for manipulating BibTeX bibliography databases

DISTNAME=	bibview-2.2
PKGNAME=	${DISTNAME}p0
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

NO_REGRESS=	Yes

.include <bsd.port.mk>
