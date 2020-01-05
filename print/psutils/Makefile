# $OpenBSD: Makefile,v 1.45 2020/01/05 11:15:49 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	utilities for manipulating PostScript documents

V=		1.93
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
