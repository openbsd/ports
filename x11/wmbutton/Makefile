# $OpenBSD: Makefile,v 1.4 2001/03/09 14:28:52 wilfried Exp $

DISTNAME=		wmbutton-0.4
CATEGORIES=		x11 x11/windowmaker
NEED_VERSION=		1.340

HOMEPAGE=		http://members.access1.net/ehflora/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}wmbutton/

USE_X11=		Yes

SAMPLE_DIR=		${PREFIX}/share/examples/wmbutton
SUBST_VARS+=		SAMPLE_DIR

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmbutton ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/.wmbutton ${SAMPLE_DIR}/dot.wmbutton.sample

.include <bsd.port.mk>
