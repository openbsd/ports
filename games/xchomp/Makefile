# $OpenBSD: Makefile,v 1.12 2001/05/06 01:06:23 lebel Exp $

COMMENT=	"Pac-man-like game under X11"

DISTNAME=	xchomp-pl1
CATEGORIES=	games
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_BACKUP}

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/xchomp
CONFIGURE_STYLE=imake noman

# Change -DFRAME_DELAY=40000 in patchfile/Imakefile value to adjust
# speed of play depending on X server.

.include <bsd.port.mk>
