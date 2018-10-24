# $OpenBSD: Makefile,v 1.18 2018/10/24 14:28:06 sthen Exp $

COMMENT=		Verilog simulation and synthesis tool

V=			10.2
DISTNAME=		verilog-$V
PKGNAME=		iverilog-$V
CATEGORIES=		lang devel
REVISION=		0

HOMEPAGE=		http://iverilog.icarus.com/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		ftp://ftp.icarus.com/pub/eda/verilog/v10/

WANTLIB += c m pthread readline ${COMPILER_LIBCXX} termcap z

COMPILER =		base-clang ports-gcc base-gcc

USE_GMAKE=		Yes

BUILD_DEPENDS=		devel/bison
YACC=			bison

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-suffix
CFLAGS+=		-fPIC

VVP_DOCS=		README.txt opcodes.txt
DOC_DIR=		${PREFIX}/share/doc/iverilog

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}/{ivlpp,vvp}
	${INSTALL_DATA} ${WRKSRC}/*.txt ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/vvp/{README,opcodes}.txt ${DOC_DIR}/vvp/
	${INSTALL_DATA} ${WRKSRC}/ivlpp/ivlpp.txt ${DOC_DIR}/ivlpp/

.include <bsd.port.mk>
