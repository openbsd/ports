# $OpenBSD: Makefile,v 1.21 2018/05/20 08:19:25 espie Exp $

COMMENT=		wm-dockapp; POP3 mail check

DISTNAME=		WMPop3-0.5.6a
PKGNAME=		${DISTNAME:L}
REVISION=		3
CATEGORIES=		mail x11/windowmaker

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext Xpm c xcb

NO_TEST=		Yes

WRKDIST=		${WRKDIR}/${DISTNAME:L}
WRKSRC=			${WRKDIST}/wmpop3
CFLAGS +=		-fgnu89-inline

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmpop3 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wmpop3
	${INSTALL_DATA} ${WRKSRC}/wmpop3rc ${PREFIX}/share/examples/wmpop3
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmpop3
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/wmpop3

.include <bsd.port.mk>
