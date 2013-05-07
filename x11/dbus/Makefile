# $OpenBSD: Makefile,v 1.99 2013/05/07 06:44:47 ajacoutot Exp $

# DPB: not parallel-safe

COMMENT=	message bus system

DISTNAME=	dbus-1.6.8
EPOCH=		0
REVISION=	6

SHARED_LIBS +=  dbus-1               10.2     # 10.2

CATEGORIES=	x11
DPB_PROPERTIES=	parallel

HOMEPAGE=	http://dbus.freedesktop.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 c expat kvm pthread xcb

MASTER_SITES=	${HOMEPAGE}releases/dbus/

USE_GMAKE=	Yes

AUTOCONF_VERSION=2.68
CONFIGURE_STYLE=autoconf
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-dbus-user=_dbus \
		--with-xml=expat \
		--enable-kqueue \
		--disable-xml-docs \
		--disable-doxygen-docs \
		--disable-abstract-sockets \
		--disable-launchd \
		--disable-selinux \
		--disable-libaudit \
		--disable-dnotify \
		--disable-inotify \
		--disable-systemd

# gives no chance of picking up devel/libexecinfo
CONFIGURE_ENV+=	ac_cv_header_execinfo_h=no \
		ac_cv_func_backtrace=no

# Full test coverage is disabled:
# * changes the final dbus binaries
# * requires glib2 and dbus-python (which creates 2 dependency loops)
# * requires the python MODULE
#CONFIGURE_ARGS+=	--enable-tests=yes
#CONFIGURE_ARGS+=	--enable-verbose-mode

FAKE_FLAGS=	sysconfdir=${TRUEPREFIX}/share/examples/dbus

.include <bsd.port.mk>
