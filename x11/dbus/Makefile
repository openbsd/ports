# $OpenBSD: Makefile,v 1.6 2007/03/21 00:21:58 espie Exp $

COMMENT=		"message system"

DISTNAME=		dbus-1.0.2
SHARED_LIBS +=  dbus-1               6.0      # .5.0
CATEGORIES=		x11

HOMEPAGE=		http://dbus.freedesktop.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		ICE X11 SM c pthread

MASTER_SITES=		${HOMEPAGE}releases/dbus/

LIB_DEPENDS=		expat.>=6::textproc/expat

SEPARATE_BUILD=		simple

AUTOCONF_VERSION=	2.59
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS=-L${LOCALBASE}/lib \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include -pthread"
CONFIGURE_ARGS=		--localstatedir=/var \
			--with-dbus-user=_dbus \
			--with-xml=expat
# Tests are disabled as they change the final dbus binaries
#CONFIGURE_ARGS=		--enable-tests
#CONFIGURE_ARGS=		--enable-verbose-mode

USE_X11=		Yes
USE_LIBTOOL=		Yes

FAKE_FLAGS=		sysconfdir=${TRUEPREFIX}/share/examples/dbus \
			DESTDIR=${WRKINST}

.include <bsd.port.mk>
