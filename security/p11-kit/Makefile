# $OpenBSD: Makefile,v 1.20 2013/03/21 08:48:53 ajacoutot Exp $

COMMENT=	library for loading and enumurating of PKCS\#11 modules

DISTNAME=	p11-kit-0.16.4
REVISION=	0

CATEGORIES=	security

SHARED_LIBS +=  p11-kit              0.0      # 0.0

HOMEPAGE=	http://p11-glue.freedesktop.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread tasn1

MASTER_SITES=	${HOMEPAGE}releases/

LIB_DEPENDS=	security/libtasn1


CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-module-path=${PREFIX}/lib/pkcs11 \
		--with-system-anchors=/etc/ssl/cert.pem

# no translation yet
CONFIGURE_ARGS += --disable-nls

FAKE_FLAGS=	exampledir=${PREFIX}/share/examples/p11-kit/pkcs11

post-install:
	rm ${PREFIX}/lib/pkcs11/*.{a,la}

.include <bsd.port.mk>
