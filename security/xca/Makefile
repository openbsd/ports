COMMENT=	create and manage certificates, CSRs, keys, etc

V=		2.4.0
DISTNAME=	xca-$V
PORTROACH=	skipv:RELEASE.$V
CATEGORIES=	security x11
REVISION=	1

HOMEPAGE=	https://hohnstaedt.de/xca/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Help Qt5Sql Qt5Widgets
WANTLIB += c crypto ltdl m

MASTER_SITES=	https://github.com/chris2511/xca/releases/download/RELEASE.$V/

MODULES=	x11/qt5

USE_GMAKE=	Yes

CFLAGS+=	-I${LOCALBASE}/include
CXXFLAGS+=	-I${LOCALBASE}/include -std=c++11

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib"
MAKE_FLAGS=	LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib"
MAKE_ENV=	destdir=${WRKINST}

LIB_DEPENDS=	devel/libtool,-ltdl \
		x11/qt5/qttools,-main
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info
BUILD_DEPENDS=	textproc/py-sphinx

NO_TEST=	Yes

.include <bsd.port.mk>

# do not clobber CC from the qt5 module, the build framework uses CC=@CXX@
MAKE_FLAGS:=	${MAKE_FLAGS:NCC=*}
