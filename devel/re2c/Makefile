# $OpenBSD: Makefile,v 1.28 2020/02/15 23:05:04 sthen Exp $

COMMENT=	C-based regular expression scanner generator

V=		1.3
DISTNAME=	re2c-$V
EXTRACT_SUFX=	.tar.xz
CATEGORIES=	devel
REVISION=	0

HOMEPAGE=	https://re2c.org/

# public domain
PERMIT_PACKAGE=	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

COMPILER=	base-clang ports-gcc base-gcc

MASTER_SITES=	https://github.com/skvadrik/re2c/releases/download/$V/

TEST_DEPENDS=	shells/bash

CONFIGURE_STYLE= gnu

# re2c will use bison if present at build time, but will otherwise fallback
# to pregenerated files. because re2c is a dep on ninja, which is on the path
# to building much of the tree (and is in the chain to build the ports version
# of makeinfo, which is required to build newer versions of bison), forcibly
# disable this rather than allowing it to be used.
# 
CONFIGURE_ENV=	ac_cv_path_BISON=no

.include <bsd.port.mk>
