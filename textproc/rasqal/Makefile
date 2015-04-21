# $OpenBSD: Makefile,v 1.6 2015/04/21 18:53:16 sthen Exp $

COMMENT=		RDF Query Library for Redland
DISTNAME=		rasqal-0.9.29
CATEGORIES=		textproc
REVISION=		1

SHARED_LIBS +=	rasqal               2.0      # 3.0

HOMEPAGE=		http://librdf.org/rasqal/

MASTER_SITES=		http://download.librdf.org/source/

# LGPL 2.1+, GPL 2+ or Apache 2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curl gcrypt gmp gpg-error idn lzma m mpfr pthread
WANTLIB += raptor2 ssl uuid xml2 xslt yajl z

MODULES=		devel/gettext


BUILD_DEPENDS=		textproc/raptor

LIB_DEPENDS=		devel/mpfr \
			devel/libyajl \
			net/curl \
			security/libgcrypt \
			sysutils/e2fsprogs \
			textproc/libxml \
			textproc/libxslt \
			textproc/raptor

CONFIGURE_STYLE=	gnu autoconf
AUTOCONF_VERSION=	2.69
SEPARATE_BUILD=		Yes

CONFIGURE_ARGS=		--with-digest-library=gcrypt \
			--with-mpfr=${LOCALBASE} \
			--with-random-approach=random

.include <bsd.port.mk>
