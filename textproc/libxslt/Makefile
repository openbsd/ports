COMMENT=		XSLT C Library for GNOME

GNOME_VERSION=		1.1.43
GNOME_PROJECT=		libxslt
REVISION=		1

SHARED_LIBS +=  xslt                 4.2      # 2.43
SHARED_LIBS +=  exslt                9.8      # 8.24

CATEGORIES=		textproc

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv lzma m pthread xml2 z

MODULES=		x11/gnome

LIB_DEPENDS=		textproc/libxml

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-libxml-include-prefix="${LOCALBASE}/include/libxml2" \
			--without-python
CONFIGURE_ENV=		XML_CONFIG="${LOCALBASE}/bin/xml2-config"

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
