COMMENT =		fast library for number theory

DPB_PROPERTIES =	parallel

V =			3.1.2
PKGNAME =		flintlib-${V}
DISTNAME =		flint-${V}
SHARED_LIBS =		flint		1.0	# 19.0.0
CATEGORIES =		math

HOMEPAGE =		https://flintlib.org/

MAINTAINER =		Josh Rickmar <jrick@openbsd.org>

# LGPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		m pthread gmp mpfr

SITES =			https://flintlib.org/

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

USE_GMAKE =		Yes
CONFIGURE_STYLE =	autoreconf
AUTORECONF =		${WRKSRC}/bootstrap.sh
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16
DEBUG_PACKAGES =	${BUILD_PACKAGES}

MAKE_FLAGS =		FLINT_LIB_FULL=libflint.so.${LIBflint_VERSION:R}.${LIBflint_VERSION:E}

CONFIGURE_ARGS =	--with-pic \
			--with-gmp=${LOCALBASE} \
			--with-mpfr=${LOCALBASE} \
			--without-blas \
			--without-gc \
			--without-ntl

# don't force debug symbols, just use normal ports infrastructure
CONFIGURE_ARGS +=	--enable-debug=no

# static build needlessly recompiles all objects
CONFIGURE_ARGS +=	--disable-static

LIB_DEPENDS =		devel/gmp \
			devel/mpfr

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/flint
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/flint
	${INSTALL_DATA} ${WRKSRC}/examples/*.c ${PREFIX}/share/examples/flint

.include <bsd.port.mk>
