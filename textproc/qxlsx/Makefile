COMMENT=		MS Excel file reader/writer library

GH_TAGNAME=		v1.4.8
GH_ACCOUNT=		QtExcel
GH_PROJECT=		QXlsx

WRKSRC=			${WRKDIST}/QXlsx

SHARED_LIBS +=	QXlsxQt5                  0.0 # 0.0
SHARED_LIBS +=	QXlsxQt6                  0.0 # 0.0

CATEGORIES=		textproc devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# MIT
PERMIT_PACKAGE=		Yes

WANTLIB += ${COMPILER_LIBCXX} m

MODULES=		devel/cmake

CONFIGURE_ARGS=		-DBUILD_SHARED_LIBS=ON

FLAVORS=		qt6
FLAVOR ?=

.if ${FLAVOR:Mqt6}
FULLPKGNAME=		qt6-${DISTNAME:L}
MODULES +=		x11/qt6
WANTLIB += GL Qt6Core Qt6Gui xkbcommon
CONFIGURE_ARGS +=	-DQT_VERSION_MAJOR=6
.else
FULLPKGNAME=		qt5-${DISTNAME:L}
MODULES +=		x11/qt5
WANTLIB += Qt5Core Qt5Gui
CONFIGURE_ARGS +=	-DQT_VERSION_MAJOR=5
.endif

.include <bsd.port.mk>
