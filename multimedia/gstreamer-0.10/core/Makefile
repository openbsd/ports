# $OpenBSD: Makefile,v 1.35 2014/04/01 16:31:40 ajacoutot Exp $

COMMENT=		framework for streaming media

V=			0.10.36
DISTNAME=		gstreamer-${V}
REVISION=		6

SHARED_LIBS +=  gstreamer-0.10       3.0      # 30.0
SHARED_LIBS +=  gstbase-0.10         3.0      # 30.0
SHARED_LIBS +=  gstcontroller-0.10   4.0      # 30.0
SHARED_LIBS +=  gstdataprotocol-0.10 3.0      # 30.0
SHARED_LIBS +=  gstcheck-0.10        2.0      # 30.0
SHARED_LIBS +=  gstnet-0.10          3.0      # 30.0

WANTLIB += c ffi glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += m pcre pthread xml2 z

MASTER_SITES=		${MASTER_SITE_GST:=gstreamer/}

BUILD_DEPENDS=		devel/flex
LIB_DEPENDS=		textproc/libxml \
			devel/glib2

CONFIGURE_ENV +=	FLEX_PATH=${LOCALBASE}/bin/gflex \
			ac_cv_path_PYTHON=""

# do not pick-up gmp nor gdl: for now, it is only used by
# tests/check/gst (which is not built) but better safe than sorry
CONFIGURE_ENV +=	ac_cv_lib_gmp___gmpz_init_set_d=no \
			ac_cv_lib_gsl_gsl_rng_uniform_int=no

.include <bsd.port.mk>
