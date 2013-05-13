# $OpenBSD: Makefile,v 1.5 2013/05/13 11:43:24 benoit Exp $

COMMENT=	very fast free Verilog HDL simulator

DISTNAME=	verilator-3.846
CATEGORIES=	lang devel

HOMEPAGE=	http://www.veripool.org/wiki/verilator/Intro

# LGPLv3 or Perl
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		http://www.veripool.org/ftp/
EXTRACT_SUFX=		.tgz

WANTLIB=		c m stdc++

BUILD_DEPENDS +=	devel/bison

CONFIGURE_STYLE=	gnu
MAKE_FLAGS=		VERILATOR_ROOT=${PREFIX}/share/verilator/ \
			COPT="${CFLAGS}"

USE_GMAKE=		Yes

TEST_TARGET=		test
TEST_FLAGS=		VERILATOR_ROOT=${WRKSRC}

.include <bsd.port.mk>
