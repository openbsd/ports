# $OpenBSD: Makefile,v 1.10 2004/12/27 18:32:40 alek Exp $

COMMENT=	"XML security library"
COMMENT-docs=	"XML security library documentation"

VERSION=	1.2.5
DISTNAME=	xmlsec1-${VERSION}
PKGNAME=	xmlsec-${VERSION}p0
PKGNAME-docs=	xmlsec-docs-${VERSION}
CATEGORIES=	security

HOMEPAGE=	http://www.aleksey.com/xmlsec/
MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

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

MULTI_PACKAGES=		-docs
SUBPACKAGE?=

.if defined(PACKAGING) && ${SUBPACKAGE} == "-docs"
PKG_ARCH=		*
WANTLIB=
.endif

.if ${SUBPACKAGE} != "-docs"
MODULES=		converters/libiconv
BUILD_DEPENDS=		::devel/pkgconfig
LIB_DEPENDS=		xslt.2::textproc/libxslt \
			gnutls.12::security/gnutls
.endif

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-gnutls="${LOCALBASE}" \
			--without-nss \
			--without-nspr

REGRESS_DEPENDS=	::security/xmlsec
REGRESS_FLAGS=		ABS_BUILDDIR="${WRKSRC}"

.include <bsd.port.mk>
