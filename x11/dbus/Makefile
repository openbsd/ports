# $OpenBSD: Makefile,v 1.85 2012/08/15 08:03:43 ajacoutot Exp $

COMMENT=	message bus system

DISTNAME=	dbus-1.6.4
EPOCH=		0

SHARED_LIBS +=  dbus-1               10.2     # 10.2

CATEGORIES=	x11

HOMEPAGE=	http://dbus.freedesktop.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += ICE SM X11 c expat pthread xcb

MASTER_SITES=	${HOMEPAGE}/releases/dbus/

SEPARATE_BUILD=	Yes

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"
CONFIGURE_ARGS=	--with-dbus-user=_dbus \
		--with-xml=expat \
		--with-x \
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
