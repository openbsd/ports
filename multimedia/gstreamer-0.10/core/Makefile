# $OpenBSD: Makefile,v 1.44 2017/09/25 09:16:13 robert Exp $

COMMENT=		framework for streaming media

V=			0.10.36
DISTNAME=		gstreamer-${V}
REVISION=		12

SHARED_LIBS +=  gstreamer-0.10       3.0      # 30.0
SHARED_LIBS +=  gstbase-0.10         3.0      # 30.0
SHARED_LIBS +=  gstcontroller-0.10   4.0      # 30.0
SHARED_LIBS +=  gstdataprotocol-0.10 3.0      # 30.0
SHARED_LIBS +=  gstcheck-0.10        2.0      # 30.0
SHARED_LIBS +=  gstnet-0.10          3.0      # 30.0

WANTLIB += c ffi glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 iconv intl lzma m
WANTLIB += pcre pthread xml2 z

MASTER_SITES=		${MASTER_SITE_GST:=gstreamer/}

LIB_DEPENDS=		devel/gettext \
			devel/glib2 \
			textproc/libxml

CONFIGURE_ENV +=	ac_cv_path_PYTHON=""

# do not pick-up gmp nor gdl: for now, it is only used by
# tests/check/gst (which is not built) but better safe than sorry
CONFIGURE_ENV +=	ac_cv_lib_gmp___gmpz_init_set_d=no \
			ac_cv_lib_gsl_gsl_rng_uniform_int=no

.include <bsd.port.mk>
