# $OpenBSD: Makefile,v 1.15 2002/10/28 13:40:41 naddy Exp $

COMMENT=	"GUI for manipulating BibTeX bibliography databases"

DISTNAME=	bibview-2.2
CATEGORIES=	databases print

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_TEX_CTAN:=biblio/bibtex/utils/bibview-2.0/}

CONFIGURE_STYLE=imake
WRKDIST=	${WRKDIR}/bibview-2.2
USE_X11=	Yes

NO_REGRESS=	Yes

.include <bsd.port.mk>
