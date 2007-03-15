# $OpenBSD: Makefile,v 1.15 2007/03/15 11:30:07 jolan Exp $

COMMENT-main=	"XML security library"
COMMENT-docs=	"XML security library documentation"

VERSION=	1.2.5
DISTNAME=	xmlsec1-${VERSION}
PKGNAME-main=	xmlsec-${VERSION}p3
PKGNAME-docs=	xmlsec-docs-${VERSION}p0
CATEGORIES=	security
SHARED_LIBS=	xmlsec1-gnutls	3.5 \
		xmlsec1-openssl	3.5 \
		xmlsec1		3.5
MODGNU_SHARED_LIBS=xmlsec1-gnutls '' \
		xmlsec1-openssl	'' \
		xmlsec1		''

HOMEPAGE=	http://www.aleksey.com/xmlsec/

# MIT Licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto gcrypt gpg-error intl m xml2 z

MASTER_SITES=	http://www.aleksey.com/xmlsec/download/ \
		ftp://ftp.aleksey.com/pub/xmlsec/releases/ \
		ftp://ftp.xmlsoft.org/xmlsec/releases/ \
		ftp://ftp.rpmfind.net/pub/XML/xmlsec/releases/

MULTI_PACKAGES=		-main -docs

PKG_ARCH-docs=		*
WANTLIB-docs=
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=

MODULES=		converters/libiconv
LIB_DEPENDS=		xslt.>=2::textproc/libxslt \
			gnutls.>=12::security/gnutls

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-gnutls="${LOCALBASE}" \
			--without-nss \
			--without-nspr

REGRESS_DEPENDS=	::security/xmlsec
REGRESS_FLAGS=		ABS_BUILDDIR="${WRKSRC}"

.include <bsd.port.mk>
