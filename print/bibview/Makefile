# $OpenBSD: Makefile,v 1.12 2001/10/28 13:05:48 espie Exp $

COMMENT=	"GUI for manipulating BibTeX bibliography databases"

DISTNAME=	bibview-2.2
CATEGORIES=	databases print
NEED_VERSION=	1.363

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_TEX_CTAN}
MASTER_SITE_SUBDIR=	biblio/bibtex/utils/bibview-2.0

CONFIGURE_STYLE=imake
WRKDIST=	${WRKDIR}/bibview-2.2
USE_X11=	Yes

.include <bsd.port.mk>
