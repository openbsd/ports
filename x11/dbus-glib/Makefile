# $OpenBSD: Makefile,v 1.39 2012/09/21 14:48:06 ajacoutot Exp $

COMMENT=	glib bindings for dbus message system

DISTNAME=	dbus-glib-0.100
REVISION=	0
EPOCH=		0

SHARED_LIBS+=	dbus-glib-1	4.3 # .4.2

CATEGORIES=	x11

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/DBusBindings/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

WANTLIB += c dbus-1 expat gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 pcre pthread z ffi

MASTER_SITES=	http://dbus.freedesktop.org/releases/dbus-glib/

MODULES=	devel/gettext
LIB_DEPENDS=	x11/dbus>=1.4.10v0 \
		devel/glib2

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-bash-completion \
		--disable-gtk-doc \
		--with-test-socket-dir=${WRKDIR}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

FAKE_FLAGS=	completiondir="${PREFIX}/share/examples/dbus-glib"

.include <bsd.port.mk>
