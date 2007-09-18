# $OpenBSD: Makefile,v 1.8 2007/09/18 18:39:07 steven Exp $

COMMENT=	lightweight scripting language with C-like syntax

DISTNAME=	arena-0.9.13
CATEGORIES=	lang

HOMEPAGE=	http://www.minimalinux.org/arena/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	${HOMEPAGE}

CONFIGURE_STYLE=gnu

REGRESS_TARGET=	test

.include <bsd.port.mk>
