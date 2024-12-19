PORTROACH=		limitw:1,even
DPB_PROPERTIES=		parallel

COMMENT-main=		message bus system
COMMENT-suid=		DBus setuid helper for starting system services

V=			1.16.0
DISTNAME=		dbus-${V}
EXTRACT_SUFX=		.tar.xz
EPOCH-main=		0

PKGNAME-main=		${DISTNAME}
PKGNAME-suid=		dbus-daemon-launch-helper-${V}

SHARED_LIBS += dbus-1                    11.4 # 3.38.3

CATEGORIES=		x11

HOMEPAGE=		http://dbus.freedesktop.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB-main += ${WANTLIB} X11 c expat pthread

WANTLIB-suid +=	${WANTLIB} c dbus-1 expat

MODULES=		devel/meson

MULTI_PACKAGES=		-main -suid

DEBUG_PACKAGES=		${BUILD_PACKAGES}

SITES=			https://dbus.freedesktop.org/releases/dbus/

BUILD_DEPENDS=		textproc/docbook-xsl

LIB_DEPENDS-suid=	${BASE_PKGPATH},-main

CONFIGURE_ARGS=		-Ddbus_user="_dbus" \
			-Druntime_dir="/var/run" \
			-Dducktype_docs=disabled \
			-Dqt_help=disabled \
			-Dselinux=disabled \
			-Ddoxygen_docs=disabled \
			-Dmodular_tests=disabled \
			-Dapparmor=disabled \
			-Dinotify=disabled \
			-Depoll=disabled \
			-Dlaunchd=disabled \
			-Dsystemd=disabled \
			-Dlibaudit=disabled

# our pkg-config(1) does not support relocatable prefix
CONFIGURE_ARGS +=	-Drelocation=disabled

post-install:
	rm -r ${WRKINST}/var/{lib,run/dbus}
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dbus
	mv ${WRKINST}${SYSCONFDIR}/dbus-1 \
		${PREFIX}/share/examples/dbus

.include <bsd.port.mk>
