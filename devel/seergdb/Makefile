COMMENT=		graphical front-end to GDB

V=			1.11
PKGNAME=		seergdb-$V

GH_ACCOUNT=		epasveer
GH_PROJECT=		seer
GH_TAGNAME=		v$V

CATEGORIES=		devel

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB+=		${COMPILER_LIBCXX} c m
WANTLIB+=		Qt5Core Qt5Gui Qt5PrintSupport Qt5Widgets Qt5Charts

LIB_DEPENDS=		x11/qt5/qtcharts

RUN_DEPENDS=		devel/gdb

MODULES=		devel/cmake \
			x11/qt5

WRKSRC=			${WRKDIST}/src

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Seer{GdbConfigPage,GdbWidget,MainWindow}.cpp

.include <bsd.port.mk>
