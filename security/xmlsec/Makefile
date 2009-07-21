# $OpenBSD: Makefile,v 1.19 2009/07/21 12:19:05 jasper Exp $

COMMENT-main=	XML security library
COMMENT-docs=	XML security library documentation

VERSION=	1.2.12
DISTNAME=	xmlsec1-${VERSION}
PKGNAME-main=	xmlsec-${VERSION}p0
PKGNAME-docs=	xmlsec-docs-${VERSION}
CATEGORIES=	security
SHARED_LIBS=	xmlsec1-gnutls	4.0 \
		xmlsec1-openssl	4.0 \
		xmlsec1		4.0

HOMEPAGE=	http://www.aleksey.com/xmlsec/

# MIT Licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto gcrypt gpg-error m tasn1 xml2 z

MASTER_SITES=	http://www.aleksey.com/xmlsec/download/ \
		ftp://ftp.aleksey.com/pub/xmlsec/releases/ \
		ftp://ftp.xmlsoft.org/xmlsec/releases/ \
		ftp://ftp.rpmfind.net/pub/XML/xmlsec/releases/

MULTI_PACKAGES=		-main -docs

PKG_ARCH-docs=		*
WANTLIB-docs=
LIB_DEPENDS-docs=
RUN_DEPENDS-docs=

MODULES=		devel/gettext
LIB_DEPENDS=		xslt.>=3::textproc/libxslt \
			gnutls.>=13::security/gnutls

USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-gnutls="${LOCALBASE}" \
			--without-nss \
			--without-nspr

REGRESS_DEPENDS=	::security/xmlsec
REGRESS_FLAGS=		ABS_BUILDDIR="${WRKSRC}"

.include <bsd.port.mk>
