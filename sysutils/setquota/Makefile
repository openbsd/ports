# $OpenBSD: Makefile,v 1.20 2004/12/20 10:35:36 alek Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=	"command line quota tools"

DISTNAME=	setquota-0.1
CATEGORIES=	sysutils
MASTER_SITES=	ftp://ftp.jurai.net/users/winter/

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

WRKDIST=	${WRKDIR}/setquota/
FAKE_FLAGS=	PREFIX=${PREFIX}

.include <bsd.port.mk>
