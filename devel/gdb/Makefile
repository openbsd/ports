# $OpenBSD: Makefile,v 1.74 2021/03/22 17:33:14 sthen Exp $

COMMENT=	GNU debugger
CATEGORIES=	devel

DISTNAME=	gdb-7.12.1
REVISION=	16

HOMEPAGE=	https://www.gnu.org/software/gdb/

MAINTAINER=	Pascal Stumpf <pascal@stumpf.co>

# GPLv2 and GPLv3
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_GNU:=gdb/}
DIST_SUBDIR=	gdb
EXTRACT_SUFX=	.tar.xz

MODGNU_CONFIG_GUESS_DIRS=	${WRKSRC} ${WRKSRC}/gdb

WANTLIB = c expat kvm m curses pthread ${MODPY_WANTLIB} ${COMPILER_LIBCXX} util

COMPILER=	base-clang ports-gcc base-gcc

SEPARATE_BUILD= Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--program-prefix=e \
		--disable-nls \
		--disable-sim \
		--without-guile \
		--without-lzma \
		--with-auto-load-dir=${TRUEPREFIX}/share/gdb/auto-load \
		--enable-target=all \
		--with-python=${MODPY_BIN}

USE_GMAKE=	Yes

MODULES +=	lang/python

LIB_DEPENDS +=	${MODPY_LIB_DEPENDS}
TEST_DEPENDS +=	devel/dejagnu

post-install:
	${MODPY_BIN} -m compileall ${PREFIX}/share/gdb/python

.include <bsd.port.mk>
