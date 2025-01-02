COMMENT=		MS Excel file reader/writer library

GH_TAGNAME=		v1.5.0
GH_ACCOUNT=		QtExcel
GH_PROJECT=		QXlsx
FULLPKGNAME=		qt6-${DISTNAME:L}

WRKSRC=			${WRKDIST}/QXlsx

SHARED_LIBS +=	QXlsxQt5                  0.0 # 0.0
SHARED_LIBS +=	QXlsxQt6                  0.0 # 0.0

CATEGORIES=		textproc devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui m xkbcommon

MODULES=		devel/cmake \
			x11/qt6

CONFIGURE_ARGS=		-DBUILD_SHARED_LIBS=ON \
			-DQT_VERSION_MAJOR=6

.include <bsd.port.mk>
