# $OpenBSD: Makefile,v 1.11 2009/11/29 09:16:33 ajacoutot Exp $

COMMENT =		multimedia framework

V =			0.10.25

PKGNAME =		gstreamer-$V

DISTNAME =		gstreamer-$V

SHARED_LIBS +=  gstreamer-0.10       1.0      # .22.0
SHARED_LIBS +=  gstbase-0.10         1.0      # .22.0
SHARED_LIBS +=  gstcontroller-0.10   2.0      # .22.0
SHARED_LIBS +=  gstdataprotocol-0.10 1.0      # .22.0
SHARED_LIBS +=  gstcheck-0.10        0.0      # .22.0
SHARED_LIBS +=  gstnet-0.10          1.0      # .22.0

WANTLIB += c m pcre pthread z

MASTER_SITES =		${MASTER_SITE_GST:=gstreamer/}

MODULES =		devel/gettext

BUILD_DEPENDS =		::devel/flex
LIB_DEPENDS =		xml2.>=6::textproc/libxml \
			glib-2.0.>=1800,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2

REGRESS_DEPENDS =	::${BASE_PKGPATH}

CONFIGURE_ENV +=	FLEX_PATH=${LOCALBASE}/bin/gflex \
			ac_cv_path_PYTHON=""

# do not pick-up gmp nor gdl: for now, it is only used by
# tests/check/gst (which is not built) but better safe than sorry
CONFIGURE_ENV +=	ac_cv_lib_gmp___gmpz_init_set_d=no \
			ac_cv_lib_gsl_gsl_rng_uniform_int=no

# autoconf check returns wrong value on powerpc leading to undefined
# references to `__multi3' and `__udivti3'
.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ENV +=	gst_cv_uint128_t=no
.endif

.include <bsd.port.mk>
