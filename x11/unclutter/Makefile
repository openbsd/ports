# $OpenBSD: Makefile,v 1.5 2002/10/29 19:48:59 naddy Exp $

COMMENT=	"hides idle X11 cursor"

DISTNAME=	unclutter-8
CATEGORIES=	x11

MAINTAINER=	Brian J. Kifiak <bk@rt.fm>

MASTER_SITES=		${MASTER_SITE_XCONTRIB:=utilities/}
EXTRACT_SUFX=		.tar.Z

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes

WRKSRC=		${WRKDIR}/unclutter
CONFIGURE_STYLE=imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
