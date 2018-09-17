# $OpenBSD: Makefile,v 1.49 2018/09/17 08:46:09 ajacoutot Exp $

COMMENT=		framework for streaming media

DISTNAME=		gstreamer-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-${V}

SHARED_LIBS +=  gstreamer-1.0        4.0      # 1403.0
SHARED_LIBS +=  gstbase-1.0          4.0      # 1403.0
SHARED_LIBS +=  gstcontroller-1.0    4.0      # 1403.0
SHARED_LIBS +=  gstnet-1.0           4.0      # 1403.0
SHARED_LIBS +=  gstcheck-1.0         4.0      # 1403.0

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

# PTP helper does not do anything on OpenBSD (functionality needs to be
# implemented): no need to install it suid root
CONFIGURE_ARGS +=	--with-ptp-helper-permissions=none

.include <bsd.port.mk>
