# $OpenBSD: Makefile,v 1.1.1.1 2011/03/16 08:44:49 jasper Exp $

COMMENT=	serve 9P from Unix

DISTNAME=	u9fs-20110118
CATEGORIES=	plan9

MASTER_SITES=	http://plan9.bell-labs.com/sources/contrib/sl/u9fs/ \
		http://openbsd.stanleylieber.com/u9fs/
EXTRACT_SUFX=	-src.tgz

MAINTAINER=	Stanley Lieber <stanley.lieber@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

WRKDIST=	${WRKDIR}

MAKE_FILE=	makefile

MAKE_FLAGS=	CC=${CC}

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/u9fs ${PREFIX}/bin/u9fs

.include <bsd.port.mk>
