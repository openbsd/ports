# $OpenBSD: Makefile,v 1.3 2001/01/19 18:50:13 naddy Exp $

DISTNAME=	wmcalc-0.3
CATEGORIES=	math x11 x11/windowmaker
NEED_VERSION=	1.340
HOMEPAGE=	http://members.access1.net/ehflora/

MAINTAINER=	Peter Stromberg <home@wilfried.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}wmcalc/

SAMPLE_DIR=	${PREFIX}/share/examples/wmcalc

SUBST_VARS+=	SAMPLE_DIR

USE_X11=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmcalc ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/.wmcalc ${SAMPLE_DIR}/dot.wmcalc.sample

.include <bsd.port.mk>
