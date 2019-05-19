# $OpenBSD: Makefile,v 1.49 2019/05/19 11:26:25 naddy Exp $

COMMENT=		library for loading and enumerating PKCS\#11 modules

GH_PROJECT=		p11-kit
GH_ACCOUNT=		p11-glue
GH_TAGNAME=		0.23.15

REVISION=		0

CATEGORIES=		security

SHARED_LIBS +=  p11-kit              3.0      # 3.0

HOMEPAGE=		http://p11-glue.freedesktop.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += 	c ffi iconv intl pthread tasn1

LIB_DEPENDS=		devel/gettext \
			devel/libffi \
			security/libtasn1

CONFIGURE_STYLE=	autoreconf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--with-module-path=${PREFIX}/lib/pkcs11 \
			--with-trust-paths=/etc/ssl/cert.pem \
			--without-systemd

# no translation yet
#CONFIGURE_ARGS +=	--disable-nls

FAKE_FLAGS=		exampledir=${PREFIX}/share/examples/p11-kit/pkcs11

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16
AUTORECONF=		./autogen.sh
BUILD_DEPENDS +=	devel/gettext-tools

post-install:
	rm ${PREFIX}/lib/pkcs11/*.{a,la}
# see the install-exec-hook target in p11-kit/Makefile.am
	ln -sf libp11-kit.so.${LIBp11-kit_VERSION} ${PREFIX}/lib/p11-kit-proxy.so

.include <bsd.port.mk>
