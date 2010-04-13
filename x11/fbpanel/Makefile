# $OpenBSD: Makefile,v 1.7 2010/04/13 16:28:44 dcoppa Exp $

SHARED_ONLY=	Yes

COMMENT=	lightweight NETWM compliant desktop panel

DISTNAME=	fbpanel-6.0
CATEGORIES=	x11
EXTRACT_SUFX=	.tbz2

MAINTAINER=	David Coppa <dcoppa@openbsd.org>

HOMEPAGE=	http://fbpanel.sourceforge.net/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fbpanel/}

MODULES=	devel/gettext

USE_GMAKE=	Yes
NO_REGRESS=	Yes

CONFIGURE_STYLE=simple

BUILD_DEPENDS=	::shells/bash
LIB_DEPENDS=	gdk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2
RUN_DEPENDS=	::shells/bash

WANTLIB =       X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
                Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
                fontconfig freetype gio-2.0 glib-2.0 glitz gmodule-2.0 \
                gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
                pixman-1 png pthread-stubs xcb xcb-render \
		xcb-render-util z

DATADIR =	${PREFIX}/share/fbpanel
EXECDIR =	${PREFIX}/libexec/fbpanel
EXAMPLEDIR =	${PREFIX}/share/examples/fbpanel

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure ${WRKSRC}/exec/make_profile.in \
		${WRKSRC}/scripts/rfs-pkg-config

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/panel/fbpanel ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/lib/fbpanel
	${INSTALL_DATA_DIR} ${DATADIR}/images
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA_DIR} ${EXECDIR}
	${INSTALL_DATA} ${WRKSRC}/data/images/*.{png,xpm} ${DATADIR}/images/
	${INSTALL_SCRIPT} ${WRKSRC}/exec/{make_profile,xlogout} ${EXECDIR}/
	${INSTALL_PROGRAM} ${WRKSRC}/plugins/*/*.so ${PREFIX}/lib/fbpanel/
	${INSTALL_DATA} ${WRKSRC}/data/config/default ${EXAMPLEDIR}/

.include <bsd.port.mk>
