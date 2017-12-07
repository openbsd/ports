# $OpenBSD: Makefile,v 1.22 2017/12/07 13:12:44 espie Exp $

COMMENT=		wm-dockapp; displays the time in different time zones

DISTNAME=		wmtz-0.7
REVISION=		2
CATEGORIES=		x11 x11/windowmaker
FIX_EXTRACT_PERMISSIONS=Yes

HOMEPAGE=		http://www.dockapps.net/wmtz

# GPL
PERMIT_PACKAGE_CDROM=	Yes
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
