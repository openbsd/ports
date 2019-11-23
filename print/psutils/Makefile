# $OpenBSD: Makefile,v 1.42 2019/11/23 16:21:09 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	utilities for manipulating PostScript documents

V=		1.90
DISTNAME=	psutils-${V}

CATEGORIES=	print

HOMEPAGE=	https://github.com/rrthomas/psutils

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD-like (${WRKSRC}/LICENSE)
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/rrthomas/psutils/releases/download/v${V}/

MODULES=	perl

RUN_DEPENDS=	print/libpaper

CONFIGURE_STYLE=gnu

FAKE_FLAGS=	perldir=${PREFIX}/${P5SITE}

NO_TEST=	Yes

.include <bsd.port.mk>
