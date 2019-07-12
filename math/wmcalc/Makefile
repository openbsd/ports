# $OpenBSD: Makefile,v 1.21 2019/07/12 20:47:47 sthen Exp $

COMMENT=		wm-dockapp; simple four-function calculator

DISTNAME=		wmcalc-0.3
REVISION=		2
CATEGORIES=		math x11 x11/windowmaker

HOMEPAGE=		http://members.cox.net/ehf_dockapps/

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xext Xpm c m

MASTER_SITES=		${HOMEPAGE}wmcalc/

NO_TEST=		Yes

SAMPLE_DIR=		${PREFIX}/share/examples/wmcalc
SUBST_VARS+=		SAMPLE_DIR

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmcalc ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${SAMPLE_DIR}
	${INSTALL_DATA} ${WRKSRC}/.wmcalc ${SAMPLE_DIR}/dot.wmcalc.sample

.include <bsd.port.mk>
