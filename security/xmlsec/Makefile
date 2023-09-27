COMMENT-main=	XML security library
COMMENT-docs=	XML security library documentation

VERSION=	1.3.1
DISTNAME=	xmlsec1-${VERSION}
PKGNAME-main=	xmlsec-${VERSION}
PKGNAME-docs=	xmlsec-docs-${VERSION}
CATEGORIES=	security
SHARED_LIBS=	xmlsec1-gnutls	6.0 \
		xmlsec1-openssl	5.0 \
		xmlsec1-gcrypt	1.0 \
		xmlsec1		9.0

HOMEPAGE=	https://www.aleksey.com/xmlsec/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += brotlidec brotlienc c crypto gcrypt gmp gnutls gpg-error
WANTLIB += hogweed iconv idn2 intl ltdl lzma m nettle p11-kit
WANTLIB += pthread ssl tasn1 unistring xml2 xslt z zstd

SITES=		${HOMEPAGE}/download/

MULTI_PACKAGES=	-main -docs

PKG_ARCH-docs=		*
WANTLIB-docs=
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=

LIB_DEPENDS=	devel/libtool,-ltdl \
		textproc/libxslt \
		security/gnutls
LIBTOOL_FLAGS=	--tag=disable-static

USE_GMAKE=	Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-nss \
			--without-nspr
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# do not pick up ansidecl.h from devel/gdb
# see /usr/local/include/libxml2/libxml/xmlversion.h:413
CONFIGURE_ENV +=	ac_cv_header_ansidecl_h=no

TEST_DEPENDS=		converters/base64 \
			xmlsec-${VERSION}:security/xmlsec
TEST_FLAGS=		ABS_BUILDDIR="${WRKSRC}"

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
