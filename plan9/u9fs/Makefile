COMMENT=	9P server for Unix

DISTNAME=	u9fs-20210125
CATEGORIES=	plan9

SITES=		https://bitbucket.org/plan9-from-bell-labs/u9fs/get/

COMMIT=		d65923fd17e8
DISTFILES=	${DISTNAME}{${COMMIT}}${EXTRACT_SUFX}

MAINTAINER=	Stanley Lieber <sl@stanleylieber.com>

# MIT
PERMIT_PACKAGE=	Yes
WANTLIB=	c

WRKDIST=	${WRKDIR}/plan9-from-bell-labs-u9fs-${COMMIT}

MAKE_FILE=	makefile

CFLAGS +=	-D_BSD_SOURCE -I.
MAKE_FLAGS=	CC='${CC}' CFLAGS='${CFLAGS}'

ALL_TARGET=	u9fs
NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/u9fs ${PREFIX}/sbin/u9fs
	${INSTALL_MAN} ${WRKDIST}/u9fs.man ${PREFIX}/man/man8/u9fs.8

.include <bsd.port.mk>
