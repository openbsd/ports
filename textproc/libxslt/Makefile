COMMENT=		XSLT C Library for GNOME

VERSION=		1.1.37
DISTNAME=		libxslt-${VERSION}
EXTRACT_SUFX=		.tar.xz
REVISION=		0

SHARED_LIBS +=  xslt                 4.0      # 2.37
SHARED_LIBS +=  exslt                9.8      # 8.20

CATEGORIES=		textproc

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# BSD-like
PERMIT_PACKAGE=	Yes

WANTLIB += c gcrypt gpg-error iconv intl lzma m pthread xml2 z

MODULES=		x11/gnome

LIB_DEPENDS=		textproc/libxml \
			security/libgcrypt

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-libxml-include-prefix="${LOCALBASE}/include/libxml2" \
			--without-python
CONFIGURE_ENV=		XML_CONFIG="${LOCALBASE}/bin/xml2-config"

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
