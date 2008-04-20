# $OpenBSD: Makefile,v 1.15 2008/04/20 21:00:19 jasper Exp $

COMMENT=		message bus system

DISTNAME=		dbus-1.0.2
PKGNAME=		${DISTNAME}p4
SHARED_LIBS +=  dbus-1               6.0      # .5.0
CATEGORIES=		x11

HOMEPAGE=		http://dbus.freedesktop.org/

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=		ICE X11 Xau Xdmcp SM c expat pthread

MASTER_SITES=		${HOMEPAGE}/releases/dbus/

SEPARATE_BUILD=		simple

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
			CPPFLAGS="-I${X11BASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include -pthread"
CONFIGURE_ARGS=		--localstatedir=/var \
			--with-dbus-user=_dbus \
			--with-xml=expat \
			--disable-xml-docs \
			--disable-doxygen-docs
# Tests are disabled as they change the final dbus binaries
#CONFIGURE_ARGS=		--enable-tests
#CONFIGURE_ARGS=		--enable-verbose-mode

USE_X11=		Yes
USE_LIBTOOL=		Yes

FAKE_FLAGS=		sysconfdir=${TRUEPREFIX}/share/examples/dbus

pre-install:
	@perl -pi -e 's,!!SYSCONFDIR!!,${SYSCONFDIR},g' \
		${WRKSRC}/tools/dbus-uuidgen.1 ${WRKSRC}/bus/dbus-daemon.1

.include <bsd.port.mk>
