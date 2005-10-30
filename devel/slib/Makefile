# $OpenBSD: Makefile,v 1.7 2005/10/30 09:27:08 espie Exp $

COMMENT=	"scheme r5 library"

CATEGORIES=	devel

V=3a2
DISTNAME=	slib$V
PKGNAME=	slib-$V
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://swissnet.ai.mit.edu/~jaffer/SCM.html

MASTER_SITES=	ftp://ftp.swiss.ai.mit.edu/pub/scm/

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
	${INSTALL_DATA} ${WRKDIR}/slib/*.init ${PREFIX}/share/slib
	# Those are not Unix-like
	rm ${PREFIX}/share/slib/{macscheme.init,pscheme.init}
	${INSTALL_DATA} ${WRKDIR}/slib/slib.info ${PREFIX}/info

.include <bsd.port.mk>
