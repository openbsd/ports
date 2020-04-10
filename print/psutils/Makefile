# $OpenBSD: Makefile,v 1.47 2020/04/10 10:57:35 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	utilities for manipulating PostScript documents

V=		2.02
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
