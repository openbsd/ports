COMMENT=	very fast free Verilog HDL simulator

GH_ACCOUNT =	verilator
GH_PROJECT =	verilator
GH_TAGNAME =	v5.044

CATEGORIES=	lang devel

HOMEPAGE=	https://www.veripool.org/wiki/verilator/Intro

# LGPLv3 or Perl
PERMIT_PACKAGE=	Yes

WANTLIB=		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS +=	devel/bison \
			devel/help2man

CONFIGURE_STYLE =	autoconf no-autoheader
MAKE_FLAGS=		VERILATOR_ROOT=${PREFIX}/share/verilator/ \
			COPT="${CFLAGS}"

AUTOCONF_VERSION =	2.72

CONFIGURE_ENV +=	YACC="${LOCALBASE}/bin/bison" \
			ac_cv_prog_OBJCACHE=""

USE_GMAKE=		Yes

TEST_TARGET=		test
TEST_DEPENDS=		sysutils/py-distro
TEST_FLAGS=		MAKE=${MAKE_PROGRAM} \
			VERILATOR_ROOT=${WRKSRC}

post-install:
	mv ${PREFIX}/share/verilator/examples ${PREFIX}/share/examples/verilator

.include <bsd.port.mk>
