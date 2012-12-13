# $OpenBSD: Makefile,v 1.17 2012/12/13 16:34:48 naddy Exp $

COMMENT=		wm-dockapp; POP3 mail check

DISTNAME=		WMPop3-0.5.6a
PKGNAME=		${DISTNAME:L}
REVISION=		1
CATEGORIES=		mail x11/windowmaker

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c pthread-stubs xcb

NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/${DISTNAME:L}
WRKSRC=			${WRKDIST}/wmpop3

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmpop3 ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wmpop3
	${INSTALL_DATA} ${WRKSRC}/wmpop3rc ${PREFIX}/share/examples/wmpop3
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmpop3
	${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/wmpop3

.include <bsd.port.mk>
