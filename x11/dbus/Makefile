# $OpenBSD: Makefile,v 1.20 2008/12/09 14:14:45 jasper Exp $

COMMENT=		message bus system

DISTNAME=		dbus-1.2.6
SHARED_LIBS+=		dbus-1	7.0
CATEGORIES=		x11

HOMEPAGE=		http://dbus.freedesktop.org/

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=		ICE X11 Xau Xdmcp SM c expat pthread

MASTER_SITES=		${HOMEPAGE}/releases/dbus/

SEPARATE_BUILD=		simple
USE_LIBTOOL=		Yes
USE_X11=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -pthread"
CONFIGURE_ARGS=		--localstatedir=/var \
			--with-dbus-user=_dbus \
			--with-xml=expat \
			--disable-xml-docs \
			--disable-doxygen-docs \
			--disable-abstract-sockets
# Tests are disabled as they change the final dbus binaries
#CONFIGURE_ARGS=		--enable-tests
#CONFIGURE_ARGS=		--enable-verbose-mode

FAKE_FLAGS=		sysconfdir=${TRUEPREFIX}/share/examples/dbus

pre-build:
	@${SUBST_CMD} ${WRKSRC}/bus/dbus-daemon.1 ${WRKSRC}/tools/dbus-uuidgen.1

.include <bsd.port.mk>
