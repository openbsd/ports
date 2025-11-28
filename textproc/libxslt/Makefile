COMMENT=		XSLT C Library for GNOME

DIST_TUPLE=		gnome GNOME libxslt v1.1.44 .

SHARED_LIBS +=  xslt                 4.2      # 2.43
SHARED_LIBS +=  exslt                9.8      # 8.24

CATEGORIES=		textproc

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB += c iconv m xml2 z

MODULES=		x11/gnome

LIB_DEPENDS=		textproc/libxml

AUTOCONF_VERSION=	2.72
AUTOMAKE_VERSION=	1.18

CONFIGURE_STYLE=	autoreconf

CONFIGURE_ARGS=		--with-libxml-include-prefix="${LOCALBASE}/include/libxml2" \
			--without-python
CONFIGURE_ENV=		XML_CONFIG="${LOCALBASE}/bin/xml2-config"

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
