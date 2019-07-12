# $OpenBSD: Makefile,v 1.9 2019/07/12 20:47:42 sthen Exp $

COMMENT=	symbolics math system

CATEGORIES=	math

DISTNAME=	jacal-1b9
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://people.csail.mit.edu/jaffer/JACAL

MASTER_SITES=	http://groups.csail.mit.edu/mac/ftpdir/scm/ \
		http://groups.csail.mit.edu/mac/ftpdir/scm/OLD/

# GPLv3
PERMIT_PACKAGE=	Yes

WRKDIST=	${WRKDIR}/jacal

NO_TEST=	Yes
PKG_ARCH=	*

do-build:
	touch ${WRKDIST}/srcdir.mk

FAKE_FLAGS=prefix=${TRUEPREFIX}/ 

post-install:
	${INSTALL_DATA} ${WRKDIST}/jacal.info ${PREFIX}/info
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jacal
	${INSTALL_DATA} ${WRKDIST}/demo ${PREFIX}/share/doc/jacal
	${INSTALL_DATA} ${WRKDIST}/test.math ${PREFIX}/share/doc/jacal
	${INSTALL_DATA} ${WRKDIST}/rw.math ${PREFIX}/share/doc/jacal
	${INSTALL_DATA} ${WRKDIST}/ANNOUNCE ${PREFIX}/share/doc/jacal

RUN_DEPENDS=	lang/scm

.include <bsd.port.mk>
