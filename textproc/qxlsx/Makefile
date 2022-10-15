COMMENT=		MS Excel file reader/writer library

GH_TAGNAME=		v1.4.4
GH_ACCOUNT=		QtExcel
GH_PROJECT=		QXlsx
PKGNAME=		${DISTNAME:L}

WRKSRC=			${WRKDIST}/QXlsx

SHARED_LIBS +=	QXlsx                     0.0 # 0.0

CATEGORIES=		textproc devel

# MIT
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui m xkbcommon

MODULES=		devel/cmake \
			x11/qt6

CONFIGURE_ARGS=		-DBUILD_SHARED_LIBS=ON

.include <bsd.port.mk>
