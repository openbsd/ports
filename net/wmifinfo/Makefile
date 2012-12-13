# $OpenBSD: Makefile,v 1.9 2012/12/13 16:34:48 naddy Exp $

COMMENT=		wm-dockapp; shows basic network info

DISTNAME=		wmifinfo-0.09
REVISION=		1
CATEGORIES=		net x11 x11/windowmaker

HOMEPAGE=		http://www.zevv.nl/wmifinfo/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c pthread-stubs xcb

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tgz

NO_REGRESS=		Yes

post-extract:
	@rm -f ${WRKSRC}/nwn.o

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmifinfo ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmifinfo/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wmifinfo/

.include <bsd.port.mk>
