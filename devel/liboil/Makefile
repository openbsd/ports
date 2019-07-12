# $OpenBSD: Makefile,v 1.22 2019/07/12 20:44:39 sthen Exp $

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
