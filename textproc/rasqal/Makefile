# $OpenBSD: Makefile,v 1.10 2016/11/04 11:35:20 sthen Exp $

COMMENT=		RDF Query Library for Redland
DISTNAME=		rasqal-0.9.33
CATEGORIES=		textproc
REVISION=		1

SHARED_LIBS +=  rasqal               2.0      # 3.0

HOMEPAGE=		http://librdf.org/rasqal/

MASTER_SITES=		http://download.librdf.org/source/

# LGPL 2.1+, GPL 2+ or Apache 2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curl gcrypt gmp gpg-error lzma m mpfr nghttp2 pcre
WANTLIB += pthread raptor2 ssl uuid xml2 xslt yajl z

MODULES=		devel/gettext

LIB_DEPENDS=		devel/mpfr \
			devel/pcre \
			security/libgcrypt \
			sysutils/e2fsprogs \
			textproc/raptor

SEPARATE_BUILD=		Yes

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--with-digest-library=gcrypt \
			--with-mpfr=${LOCALBASE} \
			--with-random-approach=random

.include <bsd.port.mk>
