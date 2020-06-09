# $OpenBSD: Makefile,v 1.94 2020/06/09 07:13:56 jasper Exp $

COMMENT=		XSLT C Library for GNOME

VERSION=		1.1.34
DISTNAME=		libxslt-${VERSION}
REVISION=		0

SHARED_LIBS +=  xslt                 4.0      # 2.33
SHARED_LIBS +=  exslt                9.8      # 8.20

CATEGORIES=		textproc

HOMEPAGE=		http://xmlsoft.org/XSLT/

MASTER_SITES=		https://distfiles.sigtrap.nl/ \
			ftp://xmlsoft.org/libxslt/

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB += c gcrypt gpg-error iconv intl lzma m pthread xml2 z
LIB_DEPENDS=		textproc/libxml \
			security/libgcrypt

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libxml-include-prefix="${LOCALBASE}/include/libxml2" \
			--with-html-subdir=libxslt/html \
			--without-python
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			XML_CONFIG="${LOCALBASE}/bin/xml2-config"


.include <bsd.port.mk>
