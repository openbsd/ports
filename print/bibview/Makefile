# $OpenBSD: Makefile,v 1.11 2001/04/17 13:13:25 naddy Exp $

COMMENT=	"GUI for manipulating BibTeX bibliography databases"

DISTNAME=	bibview-2.2
CATEGORIES=	databases print
NEED_VERSION=	1.363

MAINTAINER=	ports@openbsd.org

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
