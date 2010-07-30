# $OpenBSD: Makefile,v 1.15 2010/07/30 08:03:00 ajacoutot Exp $

COMMENT=		wm-dockapp; A popup menu of icons that launch programs

DISTNAME=		wmmenu-1.2
REVISION=		2
CATEGORIES=     	x11 x11/windowmaker

HOMEPAGE=		http://www.fcoutant.freesurf.fr/wmmenu.html

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xext Xpm c m dockapp

MASTER_SITES=		http://www.fcoutant.freesurf.fr/download/

USE_X11=		Yes

LIB_DEPENDS=		::devel/libdockapp

FLAVORS=		gdk_pixbuf
FLAVOR?=

.if ${FLAVOR:L:Mgdk_pixbuf}
MAKE_FLAGS=		GDKPIXBUF2=1
LIB_DEPENDS+=		::x11/gtk+2
CFLAGS+=		-pthread
MAKE_ENV+=		LDFLAGS="-pthread"
WANTLIB += pthread gdk_pixbuf_xlib-2.0
.endif

WRKDIST=		${WRKDIR}/wmmenu

pre-configure:
	@perl -pi -e 's#%%PREFIX%%#${PREFIX}#' ${WRKSRC}/example/defaults

NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmmenu ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmmenu
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wmmenu
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wmmenu/
	${INSTALL_DATA} ${WRKSRC}/example/apps ${PREFIX}/share/examples/wmmenu/
	${INSTALL_DATA} ${WRKSRC}/example/defaults ${PREFIX}/share/examples/wmmenu/

.include <bsd.port.mk>
