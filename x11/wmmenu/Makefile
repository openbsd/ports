# $OpenBSD: Makefile,v 1.6 2002/05/15 08:33:53 wilfried Exp $

COMMENT=		'wm-dockapp; A popup menu of icons that launch programs'

DISTNAME=		wmmenu-1.2
CATEGORIES=     	x11 x11/windowmaker
NEED_VERSION=		1.515

HOMEPAGE=		http://www.fcoutant.freesurf.fr/wmmenu.html

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.fcoutant.freesurf.fr/download/

USE_X11=		Yes

LIB_DEPENDS=		dockapp::devel/libdockapp

FLAVORS=		gdk_pixbuf
FLAVOR?=

.if ${FLAVOR:L:Mgdk_pixbuf}
MAKE_FLAGS=		GDKPIXBUF=1
LIB_DEPENDS+=		gdk_pixbuf_xlib::graphics/gdk-pixbuf
.endif

WRKDIST=		${WRKDIR}/wmmenu

post-patch:
	@perl -pi -e 's#%%PREFIX%%#${PREFIX}#' ${WRKSRC}/example/defaults

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmmenu ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/wmmenu
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/wmmenu
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/wmmenu/
	${INSTALL_DATA} ${WRKSRC}/example/apps ${PREFIX}/share/examples/wmmenu/
	${INSTALL_DATA} ${WRKSRC}/example/defaults ${PREFIX}/share/examples/wmmenu/

.include <bsd.port.mk>
