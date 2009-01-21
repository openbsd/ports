# $OpenBSD: Makefile,v 1.12 2009/01/21 18:28:22 kili Exp $

COMMENT=	scheme r5 library

CATEGORIES=	devel

DISTNAME=	slib-3b1

HOMEPAGE=	http://people.csail.mit.edu/jaffer/SLIB

MASTER_SITES=	http://groups.csail.mit.edu/mac/ftpdir/scm/ \
		http://groups.csail.mit.edu/mac/ftpdir/scm/OLD/

MAINTAINER=	Marc Espie <espie@openbsd.org>

WRKDIST=	${WRKDIR}/slib

# BSD-like without modify
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/slib
	${INSTALL_DATA} ${WRKDIR}/slib/*.scm ${PREFIX}/share/slib
	${INSTALL_DATA} ${WRKDIR}/slib/{ANNOUNCE,README,FAQ} ${PREFIX}/share/slib
	# install init files for Unix implementations as well
	${SUBST_CMD} ${WRKDIR}/slib/guile.init
	${INSTALL_DATA} ${WRKDIR}/slib/*.init ${PREFIX}/share/slib
	# Those are not Unix-like
	rm ${PREFIX}/share/slib/{macscheme.init,pscheme.init}
	${INSTALL_DATA} ${WRKDIR}/slib/slib.info ${PREFIX}/info

.include <bsd.port.mk>
