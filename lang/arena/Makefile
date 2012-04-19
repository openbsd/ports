# $OpenBSD: Makefile,v 1.10 2012/04/19 06:34:04 jasper Exp $

COMMENT=	lightweight scripting language with C-like syntax

DISTNAME=	arena-0.9.13
REVISION=	0
CATEGORIES=	lang

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=	http://www.minimalinux.org/arena/doc.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MASTER_SITES=	${HOMEPAGE}/../

CONFIGURE_STYLE=gnu

REGRESS_TARGET=	test

.include <bsd.port.mk>
