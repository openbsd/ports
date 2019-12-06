# $OpenBSD: Makefile,v 1.23 2019/12/06 14:30:39 sthen Exp $

BROKEN-arm=	invalid asm

COMMENT=	library of optimized inner loops

DISTNAME=	liboil-0.3.17
REVISION=	2
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}/download/

SHARED_LIBS+=	oil-0.3		4.0

HOMEPAGE=	http://liboil.freedesktop.org/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c m

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-glib

.include <bsd.port.mk>
