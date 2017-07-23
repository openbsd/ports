# $OpenBSD: Makefile,v 1.62 2017/07/23 21:12:27 ajacoutot Exp $

COMMENT=		framework for defining and tracking users, sessions & seats

PKGNAME=		${DISTNAME:L}

GH_TAGNAME=		1.2.0
GH_ACCOUNT=		ConsoleKit2
GH_PROJECT=		ConsoleKit2

CATEGORIES=		sysutils	

SHARED_LIBS +=  consolekit           0.0      # 1.0
SHARED_LIBS +=  ck-connector         1.2      # 0.0

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 c dbus-1 drm ffi gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 iconv intl kvm m pcre polkit-gobject-1
WANTLIB += pthread xcb z

USE_GMAKE=		Yes

BUILD_DEPENDS=		devel/gobject-introspection \
			textproc/xmlto

LIB_DEPENDS=		sysutils/polkit

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=		x11/dbus,-suid

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-pam-module \
			--with-pam-module-dir=${LOCALBASE}/lib/security

FAKE_FLAGS=		DBUS_SYS_DIR=${TRUEPREFIX}/share/examples/consolekit/dbus-1 \
			sysconfdir=${TRUEPREFIX}/share/examples/consolekit

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/gettext-tools \
			devel/libtool

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		NOCONFIGURE=1 \
		/bin/sh ./autogen.sh ${CONFIGURE_ARGS}

post-install:
	rmdir ${WRKINST}/var/run/ConsoleKit
	rm -r ${WRKINST}/${SYSCONFDIR}/X11/xinit/xinitrc.d \
		${PREFIX}/share/examples/consolekit/logrotate.d

.include <bsd.port.mk>
