# $OpenBSD: Makefile,v 1.2 2011/11/17 23:33:40 nigel Exp $

COMMENT=	very fast free Verilog HDL simulator

DISTNAME=	verilator-3.824
CATEGORIES=	lang devel

HOMEPAGE=	http://www.veripool.org/wiki/verilator/Intro

# LGPLv3 or Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.veripool.org/ftp/
EXTRACT_SUFX=		.tgz

WANTLIB=		c m stdc++

BUILD_DEPENDS +=	devel/bison

CONFIGURE_STYLE=	gnu
MAKE_FLAGS=		VERILATOR_ROOT=${PREFIX}/share/verilator/ \
			COPT="${CFLAGS}"

USE_GMAKE=		Yes

REGRESS_TARGET=		test
REGRESS_FLAGS=		VERILATOR_ROOT=${WRKSRC}

.include <bsd.port.mk>
