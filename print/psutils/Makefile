# $OpenBSD: Makefile,v 1.43 2019/12/17 08:17:15 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	utilities for manipulating PostScript documents

V=		1.91
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

NO_TEST=	Yes

.include <bsd.port.mk>
