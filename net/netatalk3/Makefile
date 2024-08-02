COMMENT=		Apple Filing Protocol file server over TCP/IP

V=			3.2.5
DISTNAME=		netatalk-${V}
EXTRACT_SUFX=		.tar.xz
PKGSPEC=		netatalk->=3,<4
EPOCH=			0

SHARED_LIBS +=  atalk                17.0     # unknown

CATEGORIES=		net

HOMEPAGE=		https://netatalk.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += avahi-client avahi-common c crack crypto db dbus-glib-1
WANTLIB += event_core gcrypt glib-2.0 gobject-2.0 iconv m pthread
WANTLIB += rpcsvc

SITES=			https://github.com/Netatalk/Netatalk/releases/download/netatalk-${V:S/./-/g}/

MODULES=		devel/meson

LIB_DEPENDS=		databases/db/v4 \
			devel/libevent2 \
			net/avahi,-libs \
			security/cracklib \
			security/libgcrypt \
			x11/dbus-glib

RUN_DEPENDS=		net/avahi

# afpstats(1)
RUN_DEPENDS +=		net/p5-Net-DBus

CONFIGURE_ARGS=		-Dwith-acls=false \
			-Dwith-cnid-mysql-backend=false \
			-Dwith-dtrace=false \
			-Dwith-gssapi=false \
			-Dwith-kerberos=false \
			-Dwith-krbV-uam=false \
			-Dwith-ldap=false \
			-Dwith-pam=false \
			-Dwith-pkgconfdir-path=${SYSCONFDIR}/netatalk \
			-Dwith-shadow=false \
			-Dwith-tcp-wrappers=false \
			-Dwith-dbus-daemon-path=${LOCALBASE}/bin/dbus-daemon

# needs x11/gnome/tracker3
CONFIGURE_ARGS +=	-Dwith-spotlight=false

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/netatalk/${LOCALSTATEDIR}
	mv ${WRKINST}${SYSCONFDIR}/{dbus-1,netatalk} \
		${PREFIX}/share/examples/netatalk/
	mv ${WRKINST}${LOCALSTATEDIR}/netatalk/ \
		${PREFIX}/share/examples/netatalk/${LOCALSTATEDIR}/

.include <bsd.port.mk>
