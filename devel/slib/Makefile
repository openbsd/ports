# $OpenBSD: Makefile,v 1.14 2013/12/06 14:29:25 espie Exp $

COMMENT =	scheme r5 library

CATEGORIES =	devel

DISTNAME =	slib-3b4

HOMEPAGE =	http://people.csail.mit.edu/jaffer/SLIB

MASTER_SITES =	http://groups.csail.mit.edu/mac/ftpdir/scm/ \
		http://groups.csail.mit.edu/mac/ftpdir/scm/OLD/

MAINTAINER =	Marc Espie <espie@openbsd.org>

# BSD-like without modify
PERMIT_PACKAGE_CDROM =	Yes

NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/slib
	${INSTALL_DATA} ${WRKDIST}/*.scm ${PREFIX}/share/slib
	${INSTALL_DATA} ${WRKDIST}/{ANNOUNCE,README,FAQ} ${PREFIX}/share/slib
	# install init files for Unix implementations as well
	${SUBST_CMD} ${WRKDIST}/guile*.init
	${INSTALL_DATA} ${WRKDIST}/*.init ${PREFIX}/share/slib
	# Those are not Unix-like
	rm ${PREFIX}/share/slib/{macscheme.init,pscheme.init}
	${INSTALL_DATA} ${WRKDIST}/slib.info ${PREFIX}/info

.include <bsd.port.mk>
