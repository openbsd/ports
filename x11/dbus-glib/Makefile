# $OpenBSD: Makefile,v 1.23 2010/09/06 10:50:39 fgsch Exp $

COMMENT=	glib bindings for dbus message system

DISTNAME=	dbus-glib-0.88

EPOCH=		0

SHARED_LIBS+=	dbus-glib-1	4.2 # .3.0

CATEGORIES=	x11

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/DBusBindings/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	expat c pthread pcre dbus-1 glib-2.0 gobject-2.0 gthread-2.0

MASTER_SITES=	http://dbus.freedesktop.org/releases/dbus-glib/

MODULES=	devel/gettext
LIB_DEPENDS=	::x11/dbus \
		::devel/glib2

SEPARATE_BUILD=	simple
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
LIBTOOL=	/usr/ports/infrastructure/bin/libtool

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-bash-completion \
		--enable-gtk-doc=no \
		--disable-silent-rules \
		--with-test-socket-dir=${WRKDIR}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	completiondir="${PREFIX}/share/examples/dbus-glib"

.include <bsd.port.mk>
