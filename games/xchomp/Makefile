# $OpenBSD: Makefile,v 1.10 2000/07/10 02:06:50 angelos Exp $

DISTNAME=	xchomp-pl1
CATEGORIES=	games
NEED_VERSION=	1.191
MASTER_SITES=	${MASTER_SITE_BACKUP}

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/xchomp
USE_IMAKE=	Yes
NO_INSTALL_MANPAGES= Yes
FAKE=		Yes

# Change -DFRAME_DELAY=40000 in patchfile/Imakefile value to adjust
# speed of play depending on X server.

.include <bsd.port.mk>
