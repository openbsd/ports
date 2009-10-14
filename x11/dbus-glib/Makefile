# $OpenBSD: Makefile,v 1.15 2009/10/14 17:59:49 ajacoutot Exp $

COMMENT=	glib bindings for dbus message system

# XXX 0.82.0 has a bug with gio/gvfs, make sure the following command
# works before updating:
#    gvfs-mount ftp://ftp.openbsd.org

DISTNAME=	dbus-glib-0.80
PKGNAME=	${DISTNAME}p1v0

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
