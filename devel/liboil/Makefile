# $OpenBSD: Makefile,v 1.25 2021/01/23 11:44:27 jasper Exp $

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

AUTOCONF_VERSION= 2.64
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	--disable-glib

# Workaround for invalid assembly code with clang
.if ${MACHINE_ARCH:Mpowerpc} || ${MACHINE_ARCH:Marm}
CFLAGS+=	-fno-integrated-as
.endif

.include <bsd.port.mk>
