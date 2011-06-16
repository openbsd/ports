# $OpenBSD: Makefile,v 1.25 2011/06/16 09:08:47 ajacoutot Exp $

COMMENT =		multimedia framework

V =			0.10.35

PKGNAME =		gstreamer-${V}

DISTNAME =		gstreamer-${V}

SHARED_LIBS +=  gstreamer-0.10       2.4      # .28.0
SHARED_LIBS +=  gstbase-0.10         2.4      # .28.0
SHARED_LIBS +=  gstcontroller-0.10   3.4      # .28.0
SHARED_LIBS +=  gstdataprotocol-0.10 2.4      # .28.0
SHARED_LIBS +=  gstcheck-0.10        1.4      # .28.0
SHARED_LIBS +=  gstnet-0.10          2.4      # .28.0

WANTLIB += c m pcre pthread z xml2 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0

MASTER_SITES =		${MASTER_SITE_GST:=gstreamer/}

MODULES =		devel/gettext
USE_GROFF =		Yes

BUILD_DEPENDS =		devel/flex
LIB_DEPENDS =		textproc/libxml \
			devel/glib2

# OpenBSD has support for monotonic clock (CLOCK_MONOTONIC), however we
# currently don't have most of the _POSIX_* defines in unistd.h (e.g.
# _POSIX_MONOTONIC_CLOCK 200112L) and the associated sysconf(3)
# _SC_MONOTONIC_CLOCK variable.
CPPFLAGS +=		-D_POSIX_MONOTONIC_CLOCK=200112L

REGRESS_DEPENDS =	${BASE_PKGPATH}

CONFIGURE_ENV +=	FLEX_PATH=${LOCALBASE}/bin/gflex \
			ac_cv_path_PYTHON=""

# do not pick-up gmp nor gdl: for now, it is only used by
# tests/check/gst (which is not built) but better safe than sorry
CONFIGURE_ENV +=	ac_cv_lib_gmp___gmpz_init_set_d=no \
			ac_cv_lib_gsl_gsl_rng_uniform_int=no

.include <bsd.port.mk>
