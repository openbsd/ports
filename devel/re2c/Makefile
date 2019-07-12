# $OpenBSD: Makefile,v 1.24 2019/07/12 20:45:57 sthen Exp $

COMMENT=		C-based regular expression scanner generator

V=			1.1.1
DISTNAME=		re2c-$V
CATEGORIES=		devel
HOMEPAGE=		http://re2c.org/
REVISION=		0

# public domain
PERMIT_PACKAGE=	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		https://github.com/skvadrik/re2c/releases/download/$V/

BUILD_DEPENDS=		devel/bison
TEST_DEPENDS=		shells/bash

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
