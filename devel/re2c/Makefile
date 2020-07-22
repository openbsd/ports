# $OpenBSD: Makefile,v 1.31 2020/07/22 16:04:54 sthen Exp $

COMMENT=	C-based regular expression scanner generator

V=		2.0
DISTNAME=	re2c-$V
EXTRACT_SUFX=	.tar.xz
CATEGORIES=	devel

HOMEPAGE=	https://re2c.org/

# public domain
PERMIT_PACKAGE=	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

COMPILER=	base-clang ports-gcc base-gcc

MASTER_SITES=	https://github.com/skvadrik/re2c/releases/download/$V/

TEST_DEPENDS=	shells/bash

CONFIGURE_STYLE= gnu

# re2c will use bison if present at build time, but will otherwise fallback
# to pregenerated files. because re2c is a depdendency of ninja, which is on
# the path to building much of the tree, forcibly disable this rather than
# listing the dependency.
CONFIGURE_ENV=	ac_cv_path_BISON=no

.include <bsd.port.mk>
