COMMENT=		graphical front-end to GDB

V=			2.5
PKGNAME=		seergdb-$V
REVISION=		0

GH_ACCOUNT=		epasveer
GH_PROJECT=		seer
GH_TAGNAME=		v$V

CATEGORIES=		devel

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Charts Qt6Core Qt6Gui Qt6OpenGL
WANTLIB += Qt6OpenGLWidgets Qt6PrintSupport Qt6Svg Qt6Widgets
WANTLIB += c m

RUN_DEPENDS=		devel/gdb

MODULES=		devel/cmake \
			x11/qt6

LIB_DEPENDS = 		x11/qt6/qtcharts \
			x11/qt6/qtsvg

WRKSRC=			${WRKDIST}/src

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Seer{GdbConfigPage,GdbWidget,MainWindow}.cpp

.include <bsd.port.mk>
