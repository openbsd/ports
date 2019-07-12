# $OpenBSD: Makefile,v 1.67 2019/07/12 20:49:39 sthen Exp $

# XXX fix change password (gnome-cc run-passwd.c: argv[0])

COMMENT=	D-Bus interface for user account query and manipulation

# XXX 0.6.43: https://bugs.freedesktop.org/show_bug.cgi?id=48177
DISTNAME=	accountsservice-0.6.42
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS +=  accountsservice      0.0      # 0.0

CATEGORIES=	sysutils

HOMEPAGE=	http://cgit.freedesktop.org/accountsservice/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += c ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 iconv
WANTLIB += intl pcre polkit-gobject-1 pthread z

MASTER_SITES=	http://www.freedesktop.org/software/accountsservice/

MODULES=	textproc/intltool

BUILD_DEPENDS=	devel/gobject-introspection

LIB_DEPENDS=	sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=	x11/dbus,-suid

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--enable-introspection \
		--disable-systemd

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/accountsservice

pre-configure:
	sed -i 's,/etc/gdm,${SYSCONFDIR}/gdm,g' \
		${WRKSRC}/src/daemon.c

post-install:
	rm -r ${WRKINST}/var/lib

.include <bsd.port.mk>
