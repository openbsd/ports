# $OpenBSD: Makefile,v 1.20 2013/03/21 08:45:15 ajacoutot Exp $

COMMENT=	library of optimized inner loops

DISTNAME=	liboil-0.3.17
REVISION=	1
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}/download/

SHARED_LIBS+=	oil-0.3		4.0

HOMEPAGE=	http://liboil.freedesktop.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-glib

.include <bsd.port.mk>
