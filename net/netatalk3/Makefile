COMMENT=		Apple Filing Protocol file server over TCP/IP

V=			4.0.4
DISTNAME=		netatalk-${V}
EXTRACT_SUFX=		.tar.xz
PKGSPEC=		netatalk->=3,<4
EPOCH=			0
REVISION=		0

SHARED_LIBS +=  atalk                17.0     # unknown

CATEGORIES=		net

HOMEPAGE=		https://netatalk.io/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += avahi-client avahi-common c crack db event_core gcrypt
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 iconv rpcsvc

SITES=			https://github.com/Netatalk/Netatalk/releases/download/netatalk-${V:S/./-/g}/

MODULES=		devel/meson

BUILD_DEPENDS=		textproc/docbook-xsl \
			textproc/unicode/ucd

LIB_DEPENDS=		databases/db/v4 \
			devel/glib2 \
			devel/libevent2 \
			net/avahi,-libs \
			security/cracklib \
			security/libgcrypt

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
			-Dwith-dbus-daemon-path=${LOCALBASE}/bin/dbus-daemon \
			-Dwith-unicode-data-path=${LOCALBASE}/share/unicode/ucd \
			-Dwith-init-hooks=false

# needs x11/gnome/tracker3
CONFIGURE_ARGS +=	-Dwith-spotlight=false

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

DEBUG_PACKAGES=		${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/netatalk/${LOCALSTATEDIR}
	mv ${WRKINST}${SYSCONFDIR}/netatalk ${PREFIX}/share/examples/netatalk/
	mv ${WRKINST}${LOCALSTATEDIR}/netatalk/ \
		${PREFIX}/share/examples/netatalk/${LOCALSTATEDIR}/

.include <bsd.port.mk>
