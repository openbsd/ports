# $OpenBSD: Makefile,v 1.48 2020/04/16 06:23:49 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	utilities for manipulating PostScript documents

V=		2.03
DISTNAME=	psutils-${V}

CATEGORIES=	print

HOMEPAGE=	https://github.com/rrthomas/psutils

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD-like (${WRKSRC}/LICENSE)
PERMIT_PACKAGE=	Yes

MASTER_SITES=	https://github.com/rrthomas/psutils/releases/download/v${V}/

MODULES=	perl

RUN_DEPENDS=	print/libpaper

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu

NO_TEST=	Yes

.include <bsd.port.mk>
