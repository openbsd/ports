# $OpenBSD: Makefile,v 1.12 2002/09/17 14:35:04 wilfried Exp $

COMMENT=		'wm-dockapp; application launching program'

DISTNAME=		wmbutton-0.4
CATEGORIES=		x11 x11/windowmaker

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
NO_REGRESS=		Yes

SAMPLE_DIR=		${PREFIX}/share/examples/wmbutton
SUBST_VARS+=		SAMPLE_DIR

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmbutton ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/.wmbutton ${SAMPLE_DIR}/dot.wmbutton.sample

.include <bsd.port.mk>
