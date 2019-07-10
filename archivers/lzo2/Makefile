# $OpenBSD: Makefile,v 1.17 2019/07/10 21:01:26 tj Exp $

COMMENT=	portable speedy lossless data compression library

DISTNAME=	lzo-2.10
REVISION=	1
PKGNAME=	${DISTNAME:S/lzo/lzo2/}

CATEGORIES=	archivers devel

MASTER_SITES=	${HOMEPAGE}download/

SHARED_LIBS +=	lzo2	1.0 # .2.0

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	https://www.oberhumer.com/opensource/lzo/

# GPLv2+
PERMIT_PACKAGE=	Yes

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-static \
		--docdir=${PREFIX}/share/doc/lzo2/

TEST_TARGET=	test


.include <bsd.port.mk>
