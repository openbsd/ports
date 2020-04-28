# $OpenBSD: Makefile,v 1.24 2020/04/28 18:38:41 cwen Exp $

COMMENT=	library of optimized inner loops

DISTNAME=	liboil-0.3.17
REVISION=	3
CATEGORIES=	devel
MASTER_SITES=	${HOMEPAGE}/download/

SHARED_LIBS+=	oil-0.3		4.0

HOMEPAGE=	https://liboil.freedesktop.org/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c m

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--disable-glib

# Workaround for invalid assembly code with clang
.if ${MACHINE_ARCH:Mpowerpc} || ${MACHINE_ARCH:Marm}
CFLAGS+=	-fno-integrated-as
.endif

.include <bsd.port.mk>
