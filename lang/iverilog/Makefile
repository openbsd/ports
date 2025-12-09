COMMENT=		Verilog simulation and synthesis tool

V=			12_0
DISTNAME=		iverilog-${V}
PKGNAME=		iverilog-${V:S/_/./}
CATEGORIES=		lang devel

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

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}/{ivlpp,vvp}
	${INSTALL_DATA} ${WRKSRC}/*.txt ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/vvp/{README,opcodes}.txt ${DOC_DIR}/vvp/
	${INSTALL_DATA} ${WRKSRC}/ivlpp/ivlpp.txt ${DOC_DIR}/ivlpp/

.include <bsd.port.mk>
