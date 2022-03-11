COMMENT=		XSLT C Library for GNOME

VERSION=		1.1.35
DISTNAME=		libxslt-${VERSION}
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS +=  xslt                 4.0      # 2.35
SHARED_LIBS +=  exslt                9.8      # 8.20

CATEGORIES=		textproc

HOMEPAGE=		http://xmlsoft.org/XSLT/

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB += c gcrypt gpg-error iconv intl lzma m pthread xml2 z

MASTER_SITES=		https://download.gnome.org/sources/libxslt/${VERSION:R}/

LIB_DEPENDS=		textproc/libxml \
			security/libgcrypt

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-libxml-include-prefix="${LOCALBASE}/include/libxml2" \
			--with-html-subdir=libxslt/html \
			--without-python
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			XML_CONFIG="${LOCALBASE}/bin/xml2-config"

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
