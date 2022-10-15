# patch-QXlsx_CMakeLists_txt:
# !!! matches astro/stellarium (Qt5)

COMMENT=		MS Excel file reader/writer library

GH_TAGNAME=		v1.4.4
GH_ACCOUNT=		QtExcel
GH_PROJECT=		QXlsx
PKGNAME=		${DISTNAME:L}
REVISION=		0

WRKSRC=			${WRKDIST}/QXlsx

SHARED_LIBS +=	QXlsx                     0.0 # 0.0

CATEGORIES=		textproc devel

# MIT
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui m

MODULES=		devel/cmake \
			x11/qt5

CONFIGURE_ARGS=		-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
