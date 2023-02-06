COMMENT=		MS Excel file reader/writer library

GH_TAGNAME=		v1.4.5
GH_ACCOUNT=		QtExcel
GH_PROJECT=		QXlsx
PKGNAME=		${DISTNAME:L}

WRKSRC=			${WRKDIST}/QXlsx

SHARED_LIBS +=	QXlsxQt5                  0.0 # 0.0

CATEGORIES=		textproc devel

# MIT
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui m

MODULES=		devel/cmake \
			x11/qt5

CONFIGURE_ARGS=		-DBUILD_SHARED_LIBS=ON

# !!! matches astro/stellarium (Qt5)
CONFIGURE_ARGS +=	-DQT_VERSION_MAJOR=5

.include <bsd.port.mk>
