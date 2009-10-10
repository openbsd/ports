# $OpenBSD: Makefile,v 1.14 2009/10/10 14:31:24 ajacoutot Exp $

COMMENT=	glib bindings for dbus message system

DISTNAME=	dbus-glib-0.82

SHARED_LIBS+=	dbus-glib-1	4.2 # .3.0
CATEGORIES=	x11

HOMEPAGE=	http://dbus.freedesktop.org/

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB=	expat c pthread pcre

MASTER_SITES=	${HOMEPAGE}releases/dbus-glib/

MODULES=	devel/gettext
LIB_DEPENDS=	dbus-1.>=7::x11/dbus \
		glib-2.0,gobject-2.0::devel/glib2

SEPARATE_BUILD=	simple
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-bash-completion \
		--enable-gtk-doc=no \
		--with-test-socket-dir=${WRKDIR}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS+=	completiondir="${PREFIX}/share/examples/dbus-glib"

.include <bsd.port.mk>
