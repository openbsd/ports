# $OpenBSD: Makefile,v 1.7 2019/08/13 21:40:42 sthen Exp $

COMMENT=	communicate with embedded devices using CoAP (RFC 7252)

GH_ACCOUNT=	obgm
GH_PROJECT=	libcoap

#GH_TAGNAME=	v4.2.0
#DISTFILES=	libcoap-${GH_TAGNAME}.tar.gz
# pick up some post-4.2.0 commits; when a new version is available remove
# the following 3 lines and uncomment 2 above
GH_COMMIT=	3531087bb3b2f9ee292d754d326f70468b4ae1ec
DISTFILES=	libcoap-${GH_COMMIT:C/(........).*/\1/}{${GH_COMMIT}}.tar.gz
PKGNAME=	libcoap-4.2.0pl20190802

DTLS_V=		8414f8ace98bab1f835b494c85e3a6d8144341c9
DISTFILES+=	tinydtls-${DTLS_V:C/(........).*/\1/}{${DTLS_V}}.tar.gz:0

SHARED_LIBS +=  coap-2-tinydtls             1.0 # 1.0

CATEGORIES=	devel

HOMEPAGE=	https://libcoap.net/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c

MASTER_SITES0=	https://github.com/eclipse/tinydtls/archive/

BUILD_DEPENDS=	devel/cunit \
		textproc/asciidoc

USE_GMAKE=	Yes

CONFIGURE_STYLE=	autoreconf
CONFIGURE_ARGS=		--disable-doxygen \
			--disable-shared \
			--enable-shared \
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
