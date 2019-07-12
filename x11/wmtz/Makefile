# $OpenBSD: Makefile,v 1.24 2019/07/12 20:51:24 sthen Exp $

COMMENT=		wm-dockapp; displays the time in different time zones

DISTNAME=		wmtz-0.7
REVISION=		3
CATEGORIES=		x11 x11/windowmaker
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=		http://www.dockapps.net/wmtz

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xext Xpm c m

MASTER_SITES=		http://www.dockapps.net/download/

MAKE_FLAGS=		CC="${CC}"

NO_TEST=		Yes

WRKSRC=			${WRKDIST}/wmtz

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmtz ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/wmtz.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wmtz
	${INSTALL_DATA} ${WRKSRC}/wmtzrc ${PREFIX}/share/examples/wmtz/sample.wmtzrc

.include <bsd.port.mk>
