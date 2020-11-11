# $OpenBSD: Makefile,v 1.27 2020/11/11 09:51:46 ajacoutot Exp $

COMMENT=	lightweight NETWM compliant desktop panel

DISTNAME=	fbpanel-6.1
REVISION=	8
CATEGORIES=	x11
EXTRACT_SUFX=	.tbz2

HOMEPAGE=	http://fbpanel.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 harfbuzz intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fbpanel/}

USE_GMAKE=	Yes
NO_TEST=	Yes

CONFIGURE_STYLE=simple

BUILD_DEPENDS=	graphics/gdk-pixbuf-xlib \
		shells/bash
LIB_DEPENDS=	x11/gtk+2


DATADIR =	${PREFIX}/share/fbpanel
EXECDIR =	${PREFIX}/libexec/fbpanel
EXAMPLEDIR =	${PREFIX}/share/examples/fbpanel

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure ${WRKSRC}/scripts/rfs-pkg-config

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/panel/fbpanel ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/data/man/fbpanel.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/lib/fbpanel
	${INSTALL_DATA_DIR} ${DATADIR}/images
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA_DIR} ${EXECDIR}
	${INSTALL_DATA} ${WRKSRC}/data/images/*.{png,xpm} ${DATADIR}/images/
	${INSTALL_SCRIPT} ${WRKSRC}/exec/{make_profile,xlogout} ${EXECDIR}/
	${INSTALL_PROGRAM} ${WRKSRC}/plugins/*/*.so ${PREFIX}/lib/fbpanel/
	${INSTALL_DATA} ${WRKSRC}/data/config/default ${EXAMPLEDIR}/

.include <bsd.port.mk>
