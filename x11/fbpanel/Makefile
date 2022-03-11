COMMENT=	lightweight NETWM compliant desktop panel

GH_ACCOUNT=	aanatoly
GH_PROJECT=	fbpanel
GH_TAGNAME=	7.0
CATEGORIES=	x11
REVISION=	0

HOMEPAGE=	http://aanatoly.github.io/fbpanel/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 harfbuzz intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread z

USE_GMAKE=	Yes
NO_TEST=	Yes

CONFIGURE_STYLE=simple
MODULES=	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_ADJ_FILES=configure .config/repl.py .config/tar.py
BUILD_DEPENDS=	graphics/gdk-pixbuf-xlib \
		shells/bash
LIB_DEPENDS=	x11/gtk+2
MAKE_FLAGS=	V=1

DATADIR =	${PREFIX}/share/fbpanel
EXECDIR =	${PREFIX}/libexec/fbpanel
EXAMPLEDIR =	${PREFIX}/share/examples/fbpanel
CONFIGURE_ARGS =	--prefix=${PREFIX}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/.config/rules.mk ${WRKSRC}/scripts/rfs-pkg-config
	${MODPYTHON_pre-configure}

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
