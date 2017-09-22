# $OpenBSD: Makefile,v 1.45 2017/09/22 21:30:32 sthen Exp $

COMMENT-main=	XML security library
COMMENT-docs=	XML security library documentation

VERSION=	1.2.22
DISTNAME=	xmlsec1-${VERSION}
PKGNAME-main=	xmlsec-${VERSION}
PKGNAME-docs=	xmlsec-docs-${VERSION}
CATEGORIES=	security
SHARED_LIBS=	xmlsec1-gnutls	5.0 \
		xmlsec1-openssl	4.0 \
		xmlsec1-gcrypt	0.0 \
		xmlsec1		7.0
REVISION-docs=	0
REVISION-main=	1

HOMEPAGE=	https://www.aleksey.com/xmlsec/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto gcrypt gmp gnutls gpg-error hogweed idn2 ltdl m
WANTLIB += nettle pthread ssl tasn1 unistring xml2 xslt z p11-kit ffi lzma

MASTER_SITES=	${HOMEPAGE}/download/ \
		ftp://ftp.aleksey.com/pub/xmlsec/releases/ \
		ftp://ftp.xmlsoft.org/xmlsec/releases/ \
		ftp://ftp.rpmfind.net/pub/XML/xmlsec/releases/

MULTI_PACKAGES=		-main -docs

PKG_ARCH-docs=		*
WANTLIB-docs=
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=

MODULES=		devel/gettext
LIB_DEPENDS=		devel/libtool,-ltdl \
			textproc/libxslt \
			security/gnutls

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-nss \
			--without-nspr
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# do not pick up ansidecl.h from devel/gdb
# see /usr/local/include/libxml2/libxml/xmlversion.h:413
CONFIGURE_ENV +=	ac_cv_header_ansidecl_h=no

TEST_DEPENDS=		xmlsec-${VERSION}:security/xmlsec
TEST_FLAGS=		ABS_BUILDDIR="${WRKSRC}"

.include <bsd.port.mk>
