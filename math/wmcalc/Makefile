# $OpenBSD: Makefile,v 1.5 2001/03/09 14:28:50 wilfried Exp $

DISTNAME=		wmcalc-0.3
CATEGORIES=		math x11 x11/windowmaker
NEED_VERSION=		1.340

HOMEPAGE=		http://members.access1.net/ehflora/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}wmcalc/

USE_X11=		Yes

SAMPLE_DIR=		${PREFIX}/share/examples/wmcalc
SUBST_VARS+=		SAMPLE_DIR

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmcalc ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/.wmcalc ${SAMPLE_DIR}/dot.wmcalc.sample

.include <bsd.port.mk>
