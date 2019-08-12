# $OpenBSD: Makefile,v 1.26 2019/08/12 14:09:08 sthen Exp $

COMMENT=	C-based regular expression scanner generator

V=		1.2.1
DISTNAME=	re2c-$V
EXTRACT_SUFX=	.tar.xz
CATEGORIES=	devel
HOMEPAGE=	http://re2c.org/

# public domain
PERMIT_PACKAGE=	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

COMPILER=	base-clang ports-gcc base-gcc

MASTER_SITES=	https://github.com/skvadrik/re2c/releases/download/$V/

BUILD_DEPENDS=	devel/bison
TEST_DEPENDS=	shells/bash

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
