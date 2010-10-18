# $OpenBSD: Makefile,v 1.16 2010/10/18 21:25:07 espie Exp $

COMMENT =		multimedia framework

V =			0.10.30

PKGNAME =		gstreamer-${V}
REVISION =		0

DISTNAME =		gstreamer-${V}

SHARED_LIBS +=  gstreamer-0.10       2.1      # .26.0
SHARED_LIBS +=  gstbase-0.10         2.1      # .26.0
SHARED_LIBS +=  gstcontroller-0.10   3.1      # .26.0
SHARED_LIBS +=  gstdataprotocol-0.10 2.1      # .26.0
SHARED_LIBS +=  gstcheck-0.10        1.1      # .26.0
SHARED_LIBS +=  gstnet-0.10          2.1      # .26.0

WANTLIB += c m pcre pthread z xml2 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0

MASTER_SITES =		${MASTER_SITE_GST:=gstreamer/}

MODULES =		devel/gettext
USE_GROFF =	Yes

BUILD_DEPENDS =		::devel/flex
LIB_DEPENDS =		::textproc/libxml \
			::devel/glib2

REGRESS_DEPENDS =	::${BASE_PKGPATH}

CONFIGURE_ENV +=	FLEX_PATH=${LOCALBASE}/bin/gflex \
			ac_cv_path_PYTHON=""

# do not pick-up gmp nor gdl: for now, it is only used by
# tests/check/gst (which is not built) but better safe than sorry
CONFIGURE_ENV +=	ac_cv_lib_gmp___gmpz_init_set_d=no \
			ac_cv_lib_gsl_gsl_rng_uniform_int=no

.include <bsd.port.mk>
