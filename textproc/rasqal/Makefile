# $OpenBSD: Makefile,v 1.1.1.1 2012/11/12 13:36:55 sthen Exp $

COMMENT=		RDF Query Library for Redland
DISTNAME=		rasqal-0.9.29
CATEGORIES=		textproc

SHARED_LIBS +=	rasqal               2.0      # 3.0

HOMEPAGE=		http://librdf.org/rasqal/

MASTER_SITES=		http://download.librdf.org/source/

# LGPL 2.1+, GPL 2+ or Apache 2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto curl gcrypt gmp gpg-error idn m mpfr raptor2
WANTLIB += ssl xml2 xslt yajl z

MODULES=		devel/gettext

USE_LIBTOOL=		Yes

BUILD_DEPENDS=		textproc/raptor

LIB_DEPENDS=		devel/mpfr \
			devel/libyajl \
			net/curl \
			security/libgcrypt \
			textproc/libxml \
			textproc/libxslt \
			textproc/raptor

CONFIGURE_STYLE=	gnu autoconf
AUTOCONF_VERSION=	2.69
SEPARATE_BUILD=		Yes

CONFIGURE_ARGS=		--disable-gtk-doc \
			--with-digest-library=gcrypt \
			--with-mpfr=${LOCALBASE} \
			--with-random-approach=random

# Avoid problems when ${LOCALBASE}/uuid.h is installed too
CONFIGURE_ARGS+=	--with-uuid-library=internal

.include <bsd.port.mk>
