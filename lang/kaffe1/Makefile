# $OpenBSD: Makefile,v 1.4 1998/10/23 20:59:40 marc Exp $
#
# Relevant URLs:	http://www.transvirtual.com/kaffe/

DISTNAME=       kaffe-1.0.b1
CATEGORIES=	lang

MASTER_SITES=	ftp://ftp.transvirtual.com/pub/kaffe/

LIB_DEPENDS=	jpeg\\.:${PORTSDIR}/graphics/jpeg

MAINTAINER=	ian@OpenBSD.ORG

# build/configuration variables
GNU_CONFIGURE=		yes
.if (${MACHINE_ARCH} != "alpha")
CONFIGURE_ARGS+=	--enable-shared
.endif
CONFIGURE_ARGS+=	--enable-static \
	--with-includes=${PREFIX}/include \
	--with-libs=${PREFIX}/lib

.include <bsd.port.mk>
