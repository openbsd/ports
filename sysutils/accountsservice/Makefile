# XXX fix change password (gnome-cc run-passwd.c: argv[0])

COMMENT=	D-Bus interface for user account query and manipulation

# XXX 0.6.43: https://bugs.freedesktop.org/show_bug.cgi?id=48177
DISTNAME=	accountsservice-23.13.9
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS += accountsservice           0.1 # 0.0.0

CATEGORIES=	sysutils

HOMEPAGE=	http://cgit.freedesktop.org/accountsservice/

MAINTAINER=	Robert Nagy <robert@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

WANTLIB += c consolekit gio-2.0 glib-2.0 gobject-2.0 intl polkit-gobject-1

SITES=		http://www.freedesktop.org/software/accountsservice/

MODULES=	devel/meson

BUILD_DEPENDS=	devel/gettext,-tools \
		devel/gobject-introspection \
		lang/vala

LIB_DEPENDS=	sysutils/consolekit>=1.2.4p4 \
		sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

# /usr/local/share/dbus-1/system-services/
RUN_DEPENDS +=	x11/dbus,-suid

CONFIGURE_ARGS=	-Dsystemdsystemunitdir=no \
		-Dadmin_group=wheel \
		-Dminimum_uid=1000 \
		-Dconsolekit=true

DEBUG_PACKAGES=	${BUILD_PACKAGES}

post-install:
	rm -r ${WRKINST}/var/lib

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
