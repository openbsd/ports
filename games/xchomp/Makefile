# $OpenBSD: Makefile,v 1.20 2006/07/05 07:24:27 espie Exp $

COMMENT=	"Pac-man-like game under X11"

DISTNAME=	xchomp-pl1
PKGNAME=	xchomp-0p1
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}

# License: NONE
PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"
WANTLIB=		X11 Xext c m

WRKDIST=	${WRKDIR}/xchomp
CONFIGURE_STYLE=imake noman

# Change -DFRAME_DELAY=40000 in patchfile/Imakefile value to adjust
# speed of play depending on X server.

NO_REGRESS=	Yes

.include <bsd.port.mk>
