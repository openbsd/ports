# $OpenBSD: Makefile,v 1.3 2002/03/21 20:46:26 espie Exp $

COMMENT=	"scheme r5 library"

CATEGORIES=	devel
NEED_VERSION=	1.515

V=2c9
DISTNAME=	slib$V
PKGNAME=	slib-$V
EXTRACT_SUFX=	.zip

HOMEPAGE=	http://swissnet.ai.mit.edu/~jaffer/SCM.html

MASTER_SITES=	ftp://ftp.swiss.ai.mit.edu/pub/scm/

MAINTAINER=	Marc Espie <espie@openbsd.org>

WRKDIST=	${WRKDIR}/slib

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes


NO_BUILD=		Yes


do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/slib
	${INSTALL_DATA} ${WRKDIR}/slib/*.scm ${PREFIX}/share/slib
	${INSTALL_DATA} ${WRKDIR}/slib/{ANNOUNCE,README,FAQ} ${PREFIX}/share/slib
	${INSTALL_DATA} ${WRKDIR}/slib/slib.info ${PREFIX}/info

.include <bsd.port.mk>
