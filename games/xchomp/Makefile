# $OpenBSD: Makefile,v 1.6 2000/02/12 08:41:09 turan Exp $

DISTNAME=	xchomp-pl1
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_BACKUP}
NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

WRKDIST=	${WRKDIR}/xchomp
USE_IMAKE=	yes
NO_INSTALL_MANPAGES= yes

# Change -DFRAME_DELAY=40000 in patchfile/Imakefile value to adjust
# speed of play depending on X server.

.include <bsd.port.mk>
