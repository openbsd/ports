# $OpenBSD: Makefile,v 1.17 2002/10/26 20:44:39 naddy Exp $

COMMENT=	"Pac-man-like game under X11"

DISTNAME=	xchomp-pl1
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_BACKUP}

# License: NONE
PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

WRKDIST=	${WRKDIR}/xchomp
CONFIGURE_STYLE=imake noman

# Change -DFRAME_DELAY=40000 in patchfile/Imakefile value to adjust
# speed of play depending on X server.

NO_REGRESS=	Yes

.include <bsd.port.mk>
