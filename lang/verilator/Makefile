# $OpenBSD: Makefile,v 1.17 2019/07/12 20:47:24 sthen Exp $

COMMENT=	very fast free Verilog HDL simulator

DISTNAME =	verilator-3.912
CATEGORIES=	lang devel
REVISION =	2

HOMEPAGE=	https://www.veripool.org/wiki/verilator/Intro

# LGPLv3 or Perl
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://www.veripool.org/ftp/
EXTRACT_SUFX=		.tgz

WANTLIB=		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS +=	devel/bison

CONFIGURE_STYLE=	gnu
MAKE_FLAGS=		VERILATOR_ROOT=${PREFIX}/share/verilator/ \
			COPT="${CFLAGS}"

USE_GMAKE=		Yes

TEST_TARGET=		test
TEST_FLAGS=		VERILATOR_ROOT=${WRKSRC}

.include <bsd.port.mk>
