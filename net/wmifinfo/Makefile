# $OpenBSD: Makefile,v 1.13 2015/05/25 07:54:27 jasper Exp $

COMMENT=		wm-dockapp; shows basic network info

DISTNAME=		wmifinfo-0.09
REVISION=		3
CATEGORIES=		net x11 x11/windowmaker

HOMEPAGE=		http://www.zevv.nl/wmifinfo/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		X11 Xext Xpm c pthread-stubs xcb

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tgz

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmifinfo ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmifinfo/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wmifinfo/

.include <bsd.port.mk>
