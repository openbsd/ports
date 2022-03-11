COMMENT=		Verilog simulation and synthesis tool

V=			11.0
DISTNAME=		verilog-$V
REVISION=		0
PKGNAME=		iverilog-$V
CATEGORIES=		lang devel

HOMEPAGE=		http://iverilog.icarus.com/

# GPLv2+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		ftp://ftp.icarus.com/pub/eda/verilog/v11/

WANTLIB += ${COMPILER_LIBCXX} bz2 c curses m readline z

COMPILER =		base-clang ports-gcc base-gcc

USE_GMAKE=		Yes

BUILD_DEPENDS=		devel/bison
LIB_DEPENDS =		archivers/bzip2
YACC=			bison

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-suffix
CONFIGURE_ENV+=		CFLAGS="-fPIC ${CFLAGS}" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

VVP_DOCS=		README.txt opcodes.txt
DOC_DIR=		${PREFIX}/share/doc/iverilog

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}/{ivlpp,vvp}
	${INSTALL_DATA} ${WRKSRC}/*.txt ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/vvp/{README,opcodes}.txt ${DOC_DIR}/vvp/
	${INSTALL_DATA} ${WRKSRC}/ivlpp/ivlpp.txt ${DOC_DIR}/ivlpp/

.include <bsd.port.mk>
