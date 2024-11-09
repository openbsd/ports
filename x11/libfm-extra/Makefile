COMMENT=		extra library for (deprecated) libfm

V=			1.3.2
DISTNAME=		libfm-${V}
EXTRACT_SUFX=		.tar.xz

PKGNAME=		libfm-extra-${V}
REVISION=		3

SHARED_LIBS +=  fm-extra             1.1      # 5.3

CATEGORIES=		x11 devel

HOMEPAGE=		https://pcmanfm.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += iconv intl m pcre2-8 pthread z

SITES=			${SITE_SOURCEFORGE:=pcmanfm/}

MODULES=		textproc/intltool

LIB_DEPENDS=		devel/glib2

CONFIGURE_STYLE=	gnu

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# prevent undefined references to libc functions
CONFIGURE_ENV +=	ac_cv_ld_z_defs=no

CONFIGURE_ARGS=		--with-extra-only

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
