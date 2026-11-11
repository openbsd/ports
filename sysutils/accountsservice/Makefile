# XXX fix change password; see:
# see patches/patch-src_crypt-util_c
# and patches/patch-panels_system_users_run-passwd_c in x11/gnome/control-center

COMMENT=	D-Bus interface for user account query and manipulation

V=		26.27.3
DISTNAME=	accountsservice-${V}

SHARED_LIBS += accountsservice           1.0 # 1.0.0

CATEGORIES=	sysutils

HOMEPAGE=	https://www.freedesktop.org/wiki/Software/AccountsService/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += c consolekit gio-2.0 glib-2.0 gobject-2.0 intl json-c
WANTLIB += polkit-gobject-1

SITES=		https://gitlab.freedesktop.org/accountsservice/accountsservice/-/archive/${V}/

MODULES=	devel/meson

BUILD_DEPENDS=	devel/gettext,-tools \
		devel/gobject-introspection \
		lang/vala

LIB_DEPENDS=	devel/json-c \
		sysutils/consolekit \
		sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=	x11/dbus,-suid

CONFIGURE_ARGS=	-Dsystemdsystemunitdir=no \
		-Dadmin_group=wheel \
		-Dminimum_uid=1000 \
		-Dconsolekit=true \
		-Dtests=false \
		-Dwtmpfile=/var/log/wtmp

DEBUG_PACKAGES=	${BUILD_PACKAGES}

post-install:
	rm -r ${WRKINST}/var/lib

.include <bsd.port.mk>
