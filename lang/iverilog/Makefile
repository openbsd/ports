COMMENT=		Verilog simulation and synthesis tool

V=			13_0
DISTNAME=		iverilog-${V}
PKGNAME=		iverilog-${V:S/_/./}
CATEGORIES=		lang devel
REVISION =		0

HOMEPAGE =		https://steveicarus.github.io/iverilog/

DIST_TUPLE +=	github steveicarus iverilog v${V} .

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} bz2 c curses m readline z

COMPILER =		base-clang ports-gcc base-gcc

SEPARATE_BUILD=		Yes
USE_GMAKE=		Yes

BUILD_DEPENDS=		devel/bison \
			devel/gperf
LIB_DEPENDS =		archivers/bzip2
YACC=			bison

AUTOCONF_VERSION=	2.72
AUTOMAKE_VERSION=	1.18

CONFIGURE_STYLE=	autoreconf
AUTORECONF=		sh ./autoconf.sh

CONFIGURE_ARGS+=	--disable-suffix

DOC_DIR=		${PREFIX}/share/doc/iverilog

# So ports-gcc can find bzlib.h
CFLAGS+=		-I${LOCALBASE}/include

DEBUG_PACKAGES = ${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/COPYING ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/INSTALL ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/README.md ${DOC_DIR}

.include <bsd.port.mk>
