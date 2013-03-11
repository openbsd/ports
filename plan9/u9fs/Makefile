# $OpenBSD: Makefile,v 1.2 2013/03/11 11:37:53 espie Exp $

COMMENT=	serve 9P from Unix

DISTNAME=	u9fs-20110118
CATEGORIES=	plan9

MASTER_SITES=	http://plan9.bell-labs.com/sources/contrib/sl/u9fs/ \
		http://openbsd.stanleylieber.com/u9fs/
EXTRACT_SUFX=	-src.tgz

MAINTAINER=	Stanley Lieber <stanley.lieber@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

WRKDIST=	${WRKDIR}

MAKE_FILE=	makefile

MAKE_FLAGS=	CC=${CC}

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/u9fs ${PREFIX}/bin/u9fs

.include <bsd.port.mk>
