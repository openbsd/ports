# $OpenBSD: Makefile,v 1.66 2011/06/03 16:51:23 ajacoutot Exp $

COMMENT=	message bus system

DISTNAME=	dbus-1.4.10
EPOCH=		0

SHARED_LIBS +=	dbus-1	9.1 # .8.6
CATEGORIES=	x11

HOMEPAGE=	http://dbus.freedesktop.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	ICE X11 Xau Xdmcp SM c expat pthread pthread-stubs xcb

MASTER_SITES=	${HOMEPAGE}/releases/dbus/

SEPARATE_BUILD=	simple

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -pthread"
CONFIGURE_ARGS=	--localstatedir=/var \
		--with-dbus-user=_dbus \
		--with-xml=expat \
		--enable-kqueue \
		--disable-xml-docs \
		--disable-doxygen-docs \
		--disable-abstract-sockets \
		--disable-selinux \
		--disable-libaudit \
		--disable-dnotify \
		--disable-inotify

# Tests are disabled as they change the final dbus binaries
#CONFIGURE_ARGS+=	--enable-tests
#CONFIGURE_ARGS+=	--enable-verbose-mode

FAKE_FLAGS=	sysconfdir=${TRUEPREFIX}/share/examples/dbus

.include <bsd.port.mk>
