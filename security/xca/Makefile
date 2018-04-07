# $OpenBSD: Makefile,v 1.18 2018/04/07 20:05:50 jasper Exp $

COMMENT=	create and manage certificates, CSRs, keys, etc

V=		1.4.1
DISTNAME=	xca-$V
REVISION=	1
CATEGORIES=	security x11

HOMEPAGE=	https://hohnstaedt.de/xca/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Widgets c crypto ltdl

MASTER_SITES=	https://github.com/chris2511/xca/releases/download/RELEASE.${V}/

MODULES=	x11/qt5

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
# yuk, but it does the trick.
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
