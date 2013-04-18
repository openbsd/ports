# $OpenBSD: Makefile,v 1.8 2013/04/18 17:57:07 bentley Exp $

COMMENT=		Verilog simulation and synthesis tool

V=			0.9.6
DISTNAME=		verilog-$V
PKGNAME=		iverilog-$V
CATEGORIES=		lang devel

HOMEPAGE=		http://www.icarus.com/eda/verilog/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		ftp://ftp.icarus.com/pub/eda/verilog/v0.9/

WANTLIB += c m readline stdc++ termcap z

USE_GMAKE=		Yes

BUILD_DEPENDS=		devel/bison
YACC=			bison

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-suffix
CFLAGS+=		-fPIC

VVP_DOCS=		README.txt opcodes.txt
DOC_DIR=		${PREFIX}/share/doc/iverilog

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}/{ivlpp,vvp}
	${INSTALL_DATA} ${WRKSRC}/*.txt ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/vvp/{README,opcodes}.txt ${DOC_DIR}/vvp/
	${INSTALL_DATA} ${WRKSRC}/ivlpp/ivlpp.txt ${DOC_DIR}/ivlpp/
.include <bsd.port.mk>
