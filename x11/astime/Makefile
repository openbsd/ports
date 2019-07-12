# $OpenBSD: Makefile,v 1.18 2019/07/12 20:51:08 sthen Exp $

COMMENT=		wm-dockapp; Time/Date applet

DISTNAME=		astime-2.8
REVISION=		0
CATEGORIES=		x11 x11/windowmaker

HOMEPAGE=		http://www.tigr.net/afterstep/view.php?applet=astime/data

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		ICE SM X11 Xext Xpm c m

MASTER_SITES=		http://www.tigr.net/afterstep/download/astime/

NO_TEST=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-jpeg

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/astime ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/astime.man ${PREFIX}/man/man1/astime.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/asclock
	cd ${WRKSRC} && ${INSTALL_DATA} default.astimerc modern.astimerc \
		sample.astimerc thick.astimerc ${PREFIX}/share/examples/asclock

.include <bsd.port.mk>
