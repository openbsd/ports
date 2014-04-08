# $OpenBSD: Makefile,v 1.17 2014/04/08 17:25:06 ajacoutot Exp $

COMMENT=		framework for streaming media

DISTNAME=		gstreamer-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-${V}
REVISION=		0

SHARED_LIBS +=  gstreamer-1.0        1.0      # 202.0
SHARED_LIBS +=  gstbase-1.0          1.0      # 202.0
SHARED_LIBS +=  gstcontroller-1.0    1.0      # 202.0
SHARED_LIBS +=  gstnet-1.0           1.0      # 202.0
SHARED_LIBS +=  gstcheck-1.0         1.0      # 202.0

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m pcre
WANTLIB += pthread z

MASTER_SITES=		${MASTER_SITE_GST:=gstreamer/}

BUILD_DEPENDS=		devel/flex
LIB_DEPENDS=		devel/glib2

CONFIGURE_ENV +=	FLEX_PATH=${LOCALBASE}/bin/gflex
# do not pick-up gmp nor gdl: for now, it is only used by
# tests/check/gst (which is not built) but better safe than sorry
CONFIGURE_ENV +=	ac_cv_lib_gmp___gmpz_init_set_d=no \
			ac_cv_lib_gsl_gsl_rng_uniform_int=no

pre-configure:
# https://bugzilla.gnome.org/show_bug.cgi?id=726571
# XXX check if still needed at next release
.for i in gst libs/gst/base libs/gst/controller libs/gst/net libs/gst/check
	perl -pi -e 's,--libtool="\$$\(top_builddir\)/libtool",--libtool="\$${LIBTOOL}",g' \
		${WRKSRC}/$i/Makefile.in
.endfor

.include <bsd.port.mk>
