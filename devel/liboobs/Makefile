# $OpenBSD: Makefile,v 1.3 2010/10/18 13:28:51 jasper Exp $

COMMENT=	wrapping library to the System Tools Backends

GNOME_VERSION=	2.32.0
GNOME_PROJECT=	liboobs

SHARED_LIBS +=  oobs-1                    0.0 # 4.0

CATEGORIES=	devel

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += crypto dbus-1 dbus-glib-1 glib-2.0 gobject-2.0 gthread-2.0
WANTLIB += pcre

LIB_DEPENDS=	::x11/dbus-glib
RUN_DEPENDS=	::sysutils/system-tools-backends
BUILD_DEPENDS=	${RUN_DEPENDS}

MODULES=	devel/gettext \
		x11/gnome

USE_X11=	No

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--without-hal

pre-configure:
	perl -pi -e 's,utmpx,utmp,g;' \
		-e 's,-lcrypt,-lcrypto,g' ${WRKSRC}/configure

.include <bsd.port.mk>
