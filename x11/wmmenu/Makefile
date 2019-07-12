# $OpenBSD: Makefile,v 1.22 2019/07/12 20:51:24 sthen Exp $

COMMENT=		wm-dockapp; A popup menu of icons that launch programs

DISTNAME=		wmmenu-1.2
REVISION=		4
CATEGORIES=     	x11 x11/windowmaker

HOMEPAGE=		http://www.fcoutant.freesurf.fr/wmmenu.html

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=		X11 Xext Xpm c m dockapp

MASTER_SITES=		http://www.fcoutant.freesurf.fr/download/


LIB_DEPENDS=		devel/libdockapp

FLAVORS=		gdk_pixbuf
FLAVOR?=

.if ${FLAVOR:Mgdk_pixbuf}
MAKE_FLAGS=		GDKPIXBUF2=1
LIB_DEPENDS+=		graphics/gdk-pixbuf2
CFLAGS+=		-pthread
MAKE_ENV+=		LDFLAGS="-pthread"
WANTLIB += pthread gdk_pixbuf_xlib-2.0
.endif

WRKDIST=		${WRKDIR}/wmmenu

pre-configure:
	@perl -pi -e 's#%%PREFIX%%#${PREFIX}#' ${WRKSRC}/example/defaults

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmmenu ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmmenu
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wmmenu
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wmmenu/
	${INSTALL_DATA} ${WRKSRC}/example/apps ${PREFIX}/share/examples/wmmenu/
	${INSTALL_DATA} ${WRKSRC}/example/defaults ${PREFIX}/share/examples/wmmenu/

.include <bsd.port.mk>
