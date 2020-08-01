# $OpenBSD: Makefile,v 1.10 2020/08/01 11:30:36 sthen Exp $

COMMENT=	communicate with embedded devices using CoAP (RFC 7252)

GH_ACCOUNT=	obgm
GH_PROJECT=	libcoap

GH_TAGNAME=	v4.2.1
DISTFILES=	libcoap-${GH_TAGNAME}.tar.gz
REVISION=	1

DTLS_V=		7f8c86e501e690301630029fa9bae22424adf618
DISTFILES+=	tinydtls-${DTLS_V:C/(........).*/\1/}{${DTLS_V}}.tar.gz:0

SHARED_LIBS +=  coap-2-tinydtls             2.0 # 2.1
SHARED_LIBS +=  tinydtls                    0.0 # 

CATEGORIES=	devel

HOMEPAGE=	https://libcoap.net/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES0=	https://github.com/eclipse/tinydtls/archive/

BUILD_DEPENDS=	devel/cunit \
		textproc/asciidoc \
		textproc/gsed

USE_GMAKE=	Yes
MAKE_ENV=	LIBtinydtls_VERSION=${LIBtinydtls_VERSION}

CONFIGURE_STYLE=	autoreconf
CONFIGURE_ARGS=		--disable-doxygen \
			--disable-shared \
			--enable-shared \
			--enable-examples \
			--enable-tests \
			--with-tinydtls

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
AUTORECONF=		./autogen.sh

post-extract:
	rmdir ${WRKSRC}/ext/tinydtls
	mv ${WRKDIR}/tinydtls-* ${WRKSRC}/ext/tinydtls

post-install:
	cd ${PREFIX}/man/man5; for i in *; do mv $$i ../man1/$${i%.5}.1; done

.include <bsd.port.mk>
