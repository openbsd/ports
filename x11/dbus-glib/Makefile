# $OpenBSD: Makefile,v 1.47 2014/09/13 16:36:54 ajacoutot Exp $

COMMENT=	glib bindings for dbus message system

DISTNAME=	dbus-glib-0.102
EPOCH=		0

SHARED_LIBS +=  dbus-glib-1          4.4      # 4.2

CATEGORIES=	x11

HOMEPAGE=	http://www.freedesktop.org/wiki/Software/DBusBindings/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c dbus-1 expat gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += pcre pthread z ffi

MASTER_SITES=	http://dbus.freedesktop.org/releases/dbus-glib/

MODULES=	devel/gettext
LIB_DEPENDS=	x11/dbus>=1.4.10v0 \
		devel/glib2

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-bash-completion \
		--with-test-socket-dir=${WRKDIR}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	rm ${WRKINST}/etc/bash_completion.d/dbus-bash-completion.sh
	rmdir ${WRKINST}/etc/bash_completion.d/

.include <bsd.port.mk>
