# $OpenBSD: Makefile,v 1.23 2018/12/01 21:11:32 landry Exp $

COMMENT=		C-based regular expression scanner generator

V=			1.1.1
DISTNAME=		re2c-$V
CATEGORIES=		devel
HOMEPAGE=		http://re2c.org/
REVISION=		0

# public domain
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		https://github.com/skvadrik/re2c/releases/download/$V/

BUILD_DEPENDS=		devel/bison
TEST_DEPENDS=		shells/bash

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
