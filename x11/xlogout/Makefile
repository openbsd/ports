# $OpenBSD: Makefile,v 1.13 2002/12/29 20:31:41 fgsch Exp $

COMMENT=	"simple logout button"

DISTNAME=	xlogout-1.1
CATEGORIES=	x11

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.tu-darmstadt.de/pub/X11/other/
EXTRACT_SUFX=	.tar.Z

WRKDIST=	${WRKDIR}/xlogout
USE_X11=	Yes
CONFIGURE_STYLE= imake

NO_REGRESS=	Yes

.include <bsd.port.mk>
