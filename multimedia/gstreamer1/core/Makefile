# $OpenBSD: Makefile,v 1.64 2021/10/30 11:38:00 ajacoutot Exp $

COMMENT=		framework for streaming media

DISTNAME=		gstreamer-${V}
PKGNAME=		${GST_PKGNAME_PREFIX}-${V}

SHARED_LIBS += gstreamer-1.0             6.0 # 0.1805.0
SHARED_LIBS += gstbase-1.0               6.0 # 0.1805.0
SHARED_LIBS += gstcontroller-1.0         6.0 # 0.1805.0
SHARED_LIBS += gstnet-1.0                6.0 # 0.1805.0
SHARED_LIBS += gstcheck-1.0              6.0 # 0.1805.0

WANTLIB += c execinfo gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 intl m

MASTER_SITES=		${MASTER_SITE_GST:=gstreamer/}

BUILD_DEPENDS=		devel/bison \
			devel/gobject-introspection \
			shells/bash-completion

LIB_DEPENDS=		devel/glib2

CONFIGURE_ARGS=		-Dgtk_doc=disabled \
			-Dbenchmarks=disabled \
			-Dlibunwind=disabled \
			-Dlibdw=disabled \
			-Ddbghelp=disabled

# PTP helper does not do anything on OpenBSD (functionality needs to be
# implemented): no need to install it suid root
# XXX the script doesn't handle the 'none' option; that's fine because we don't
# explicitely set the setuid in PLIST
CONFIGURE_ARGS +=	-Dptp-helper-permissions=setuid-root

# XXX configure check lost in the autoconf -> meson migration
CFLAGS +=		-DHAVE_SYS_SOCKET_H

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
