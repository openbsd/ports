# $OpenBSD: Makefile,v 1.13 2002/03/21 21:25:56 espie Exp $

COMMENT=	"graphic disk usage viewer"

DISTNAME=		xdu-3.0
CATEGORIES=     	x11
NEED_VERSION=	1.515

MAINTAINER=		Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=		http://sd.wareonearth.com/~phil/xdu/

MASTER_SITES=		http://sd.wareonearth.com/~phil/xdu/ \
			ftp://ftp.arl.mil/pub/
EXTRACT_SUFX=		.tar.Z

USE_X11=		Yes
CONFIGURE_STYLE=	imake
WRKDIST=		${WRKDIR}

.include <bsd.port.mk>
