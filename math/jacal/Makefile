# $OpenBSD: Makefile,v 1.1.1.1 2005/10/30 11:13:25 espie Exp $

COMMENT=	"symbolics math system"

CATEGORIES=	math

V=1b5
DISTNAME=	jacal$V
PKGNAME=	jacal-$V
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://swissnet.ai.mit.edu/~jaffer/SCM.html

MASTER_SITES=	ftp://ftp.swiss.ai.mit.edu/pub/scm/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/jacal

NO_REGRESS=	Yes
PKG_ARCH=	*

do-build:
	touch ${WRKDIST}/srcdir.mk

FAKE_FLAGS=prefix=${TRUEPREFIX}/ DESTDIR=${WRKINST}

post-install:
	${INSTALL_DATA} ${WRKDIST}/jacal.info ${PREFIX}/info
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jacal
	${INSTALL_DATA} ${WRKDIST}/demo ${PREFIX}/share/doc/jacal
	${INSTALL_DATA} ${WRKDIST}/test.math ${PREFIX}/share/doc/jacal
	${INSTALL_DATA} ${WRKDIST}/rw.math ${PREFIX}/share/doc/jacal
	${INSTALL_DATA} ${WRKDIST}/ANNOUNCE ${PREFIX}/share/doc/jacal

RUN_DEPENDS=:scm-*:lang/scm

.include <bsd.port.mk>
