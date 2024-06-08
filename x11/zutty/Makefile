COMMENT =	X terminal which uses OpenGL ES Compute Shaders

V =		0.16
DISTNAME =	zutty-$V

CATEGORIES =	x11

HOMEPAGE =	https://tomscii.sig7.se/zutty

SITES =		https://git.hq.sig7.se/zutty.git/snapshot/
DISTFILES =	${DISTNAME}{${V}}${EXTRACT_SUFX}

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

WANTLIB += ${COMPILER_LIBCXX} EGL GLESv2 ICE SM X11 Xau Xdmcp
WANTLIB += Xext Xmu Xt c freetype m xcb

COMPILER=	base-clang ports-gcc

CONFIGURE_ENV =	CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" \
		LDFLAGS="${LDFLAGS}"

post-extract:
	cd ${WRKDIR} && mv ${DISTNAME}-* ${DISTNAME}

do-configure:
	cd ${WRKSRC} && env -i ${CONFIGURE_ENV} \
		${MODPY_BIN} ./waf configure --prefix=${PREFIX}

do-build:
	cd ${WRKSRC} && env -i ${MAKE_ENV} ${MODPY_BIN} ./waf -v

do-install:
	cd ${WRKSRC} && env -i ${MAKE_ENV} ${MODPY_BIN} ./waf install \
		--destdir=${DESTDIR}

.include <bsd.port.mk>
