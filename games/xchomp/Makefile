# $OpenBSD: Makefile,v 1.8 2000/03/24 22:11:43 espie Exp $

DISTNAME=	xchomp-pl1
CATEGORIES=	games
NEED_VERSION=	1.191
MASTER_SITES=	${MASTER_SITE_BACKUP}

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		NONE
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

WRKDIST=	${WRKDIR}/xchomp
USE_IMAKE=	yes
NO_INSTALL_MANPAGES= yes

# Change -DFRAME_DELAY=40000 in patchfile/Imakefile value to adjust
# speed of play depending on X server.

.include <bsd.port.mk>
