# $OpenBSD: Makefile,v 1.24 2017/04/17 08:49:23 sthen Exp $

COMMENT=	lightweight NETWM compliant desktop panel

DISTNAME=	fbpanel-6.1
REVISION=	6
CATEGORIES=	x11
EXTRACT_SUFX=	.tbz2

HOMEPAGE=	http://fbpanel.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fbpanel/}

MODULES=	devel/gettext

USE_GMAKE=	Yes
NO_TEST=	Yes

CONFIGURE_STYLE=simple

BUILD_DEPENDS=	shells/bash
LIB_DEPENDS=	x11/gtk+2

WANTLIB =	X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi \
		Xinerama Xrandr Xrender atk-1.0 c cairo \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pthread z

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
