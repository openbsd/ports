COMMENT=		framework for streaming media

DISTNAME=		gstreamer-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-${V}

SHARED_LIBS += gstreamer-1.0             7.2 # 0.2407.0
SHARED_LIBS += gstbase-1.0               7.2 # 0.2407.0
SHARED_LIBS += gstcontroller-1.0         7.2 # 0.2407.0
SHARED_LIBS += gstnet-1.0                7.2 # 0.2407.0
SHARED_LIBS += gstcheck-1.0              7.2 # 0.2407.0

WANTLIB += c execinfo gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 intl m

SITES=			${SITE_GST:=gstreamer/}

BUILD_DEPENDS=		devel/bison \
			devel/gobject-introspection \
			shells/bash-completion

LIB_DEPENDS=		devel/glib2

CONFIGURE_ARGS=		-Dbenchmarks=disabled \
			-Dlibunwind=disabled \
			-Dlibdw=disabled \
			-Ddbghelp=disabled

# PTP helper does not do anything on OpenBSD (functionality needs to be
# implemented); no need to install it suid root;
# also it needs rust which would remove support for !RUST_ARCHS
CONFIGURE_ARGS +=	-Dptp-helper=disabled
#CONFIGURE_ARGS +=	-Dptp-helper-permissions=none
#CONFIGURE_ARGS +=	-Dptp-helper-setuid-user=XXXTODO
#CONFIGURE_ARGS +=	-Dptp-helper-setuid-group=XXXTODO

# XXX configure check lost in the autoconf -> meson migration
CFLAGS +=		-DHAVE_SYS_SOCKET_H

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
