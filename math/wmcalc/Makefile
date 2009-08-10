# $OpenBSD: Makefile,v 1.15 2009/08/10 06:32:43 kili Exp $

COMMENT=		wm-dockapp; simple four-function calculator

DISTNAME=		wmcalc-0.3
PKGNAME=		${DISTNAME}p0
CATEGORIES=		math x11 x11/windowmaker

HOMEPAGE=		http://members.cox.net/ehf_dockapps/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c m pthread-stubs xcb

MASTER_SITES=		${HOMEPAGE}wmcalc/

USE_X11=		Yes
NO_REGRESS=		Yes

SAMPLE_DIR=		${PREFIX}/share/examples/wmcalc
SUBST_VARS+=		SAMPLE_DIR

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmcalc ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/.wmcalc ${SAMPLE_DIR}/dot.wmcalc.sample

.include <bsd.port.mk>
