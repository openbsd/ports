# $OpenBSD: Makefile,v 1.30 2020/07/11 22:54:39 sthen Exp $

COMMENT=	create and manage certificates, CSRs, keys, etc

V=		2.3.0
DISTNAME=	xca-$V
PORTROACH=	skipv:RELEASE.$V
CATEGORIES=	security x11
REVISION=	0

HOMEPAGE=	https://hohnstaedt.de/xca/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Sql Qt5Widgets
WANTLIB += c crypto ltdl m

MASTER_SITES=	https://github.com/chris2511/xca/releases/download/RELEASE.$V/

MODULES=	x11/qt5

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		CXXFLAGS="${CXXFLAGS} -std=c++11" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib"
MAKE_FLAGS=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib"
MAKE_ENV=	destdir=${WRKINST}

LIB_DEPENDS=	devel/libtool,-ltdl
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info

NO_TEST=	Yes

.include <bsd.port.mk>

# do not clobber CC from the qt5 module, the build framework uses CC=@CXX@
MAKE_FLAGS:=	${MAKE_FLAGS:NCC=*}
