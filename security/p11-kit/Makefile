# $OpenBSD: Makefile,v 1.46 2018/07/11 20:02:16 jca Exp $

PORTROACH=	limitw:1,even

COMMENT=	library for loading and enumerating PKCS\#11 modules

DISTNAME=	p11-kit-0.23.2
REVISION=	1

CATEGORIES=	security

SHARED_LIBS +=  p11-kit              2.0      # 1.0

HOMEPAGE=	http://p11-glue.freedesktop.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c ffi iconv intl pthread tasn1

MASTER_SITES=	${HOMEPAGE}releases/

LIB_DEPENDS=	devel/gettext \
		devel/libffi \
		security/libtasn1

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-module-path=${PREFIX}/lib/pkcs11 \
		--with-trust-paths=/etc/ssl/cert.pem

# no translation yet
CONFIGURE_ARGS += --disable-nls

FAKE_FLAGS=	exampledir=${PREFIX}/share/examples/p11-kit/pkcs11

post-install:
# see the install-exec-hook target in p11-kit/Makefile.am
	ln -sf libp11-kit.so.${LIBp11-kit_VERSION} ${PREFIX}/lib/p11-kit-proxy.so
	rm ${PREFIX}/lib/pkcs11/*.{a,la}

.include <bsd.port.mk>
