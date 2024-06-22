COMMENT=		MIME messages creation and parsing library

GH_ACCOUNT=		jstedfast
GH_PROJECT=		gmime
GH_TAGNAME=		3.2.15
PKGNAME=		gmime30-${GH_TAGNAME}

SHARED_LIBS +=  gmime-3.0            2.2      # 214.1

CATEGORIES=		mail devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += assuan ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gpg-error gpgme gthread-2.0 iconv idn2 intl pcre2-8 pthread
WANTLIB += unistring z

USE_GMAKE=		Yes

BUILD_DEPENDS=		devel/gobject-introspection \
			lang/vala

LIB_DEPENDS=		devel/glib2 \
			devel/libidn2 \
			security/gpgme

AUTOCONF_VERSION=	2.71
AUTOMAKE_VERSION=	1.16
AUTORECONF=		./autogen.sh
BUILD_DEPENDS +=	textproc/gtk-doc

CONFIGURE_STYLE=	autoreconf

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
