# $OpenBSD: Makefile,v 1.7 2003/10/08 17:13:18 sturm Exp $

COMMENT=	"hides idle X11 cursor"

DISTNAME=	unclutter-8
CATEGORIES=	x11

MASTER_SITES=		${MASTER_SITE_XCONTRIB:=utilities/}
EXTRACT_SUFX=		.tar.Z

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

WRKSRC=		${WRKDIR}/unclutter
CONFIGURE_STYLE=imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
