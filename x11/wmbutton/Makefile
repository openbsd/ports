# $OpenBSD: Makefile,v 1.1.1.1 2001/01/16 21:29:04 naddy Exp $

DISTNAME=	wmbutton-0.4
CATEGORIES=	x11
NEED_VERSION=	1.340
HOMEPAGE=	http://members.access1.net/ehflora/

MAINTAINER=	Peter Stromberg <home@wilfried.net>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}wmbutton/

SAMPLE_DIR=	${PREFIX}/share/examples/wmbutton

SUBST_VARS+=	SAMPLE_DIR

USE_X11=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmbutton ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/.wmbutton ${SAMPLE_DIR}/dot.wmbutton.sample

.include <bsd.port.mk>
