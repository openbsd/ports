# $OpenBSD: Makefile,v 1.71 2021/09/05 12:12:43 ajacoutot Exp $

# XXX fix change password (gnome-cc run-passwd.c: argv[0])

COMMENT=	D-Bus interface for user account query and manipulation

# XXX 0.6.43: https://bugs.freedesktop.org/show_bug.cgi?id=48177
DISTNAME=	accountsservice-0.6.55
EXTRACT_SUFX=	.tar.xz
REVISION=	1

SHARED_LIBS += accountsservice           0.1 # 0.0.0

CATEGORIES=	sysutils

HOMEPAGE=	http://cgit.freedesktop.org/accountsservice/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 intl polkit-gobject-1

MASTER_SITES=	http://www.freedesktop.org/software/accountsservice/

MODULES=	devel/meson

BUILD_DEPENDS=	devel/gettext,-tools \
		devel/gobject-introspection

LIB_DEPENDS=	sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=	x11/dbus,-suid

CONFIGURE_ARGS=	-Dsystemdsystemunitdir=no \
		-Dadmin_group=wheel \
		-Duser_heuristics=false \
		-Dminimum_uid=1000

DEBUG_PACKAGES=	${BUILD_PACKAGES}

post-install:
	rm -r ${WRKINST}/var/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/accountsservice
	mv ${WRKINST}/etc/dbus-1 ${PREFIX}/share/examples/accountsservice/

.include <bsd.port.mk>
