# $OpenBSD: Makefile,v 1.42 2017/09/19 07:26:50 ajacoutot Exp $

COMMENT=		framework for streaming media

DISTNAME=		gstreamer-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-${V}

SHARED_LIBS +=  gstreamer-1.0        3.3      # 1203.0
SHARED_LIBS +=  gstbase-1.0          3.3      # 1203.0
SHARED_LIBS +=  gstcontroller-1.0    3.3      # 1203.0
SHARED_LIBS +=  gstnet-1.0           3.3      # 1203.0
SHARED_LIBS +=  gstcheck-1.0         3.3      # 1203.0

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv
WANTLIB += intl m pcre pthread z

MASTER_SITES=		${MASTER_SITE_GST:=gstreamer/}

BUILD_DEPENDS=		devel/bison \
			devel/gobject-introspection

LIB_DEPENDS=		devel/glib2

# do not pick-up gmp nor gdl: for now, it is only used by
# tests/check/gst (which is not built) but better safe than sorry
CONFIGURE_ENV +=	ac_cv_lib_gmp___gmpz_init_set_d=no \
			ac_cv_lib_gsl_gsl_rng_uniform_int=no

# require (at least) gtk+
CONFIGURE_ARGS +=	--disable-examples

.include <bsd.port.mk>
