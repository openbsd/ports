COMMENT =	AirPlay audio player

DIST_TUPLE =	github	mikebrady	shairport-sync	4.3.3	.
CATEGORIES =	audio net

MAINTAINER =	Klemens Nanni <kn@openbsd.org>

# BSD?
PERMIT_PACKAGE =	Yes

COMPILER=	base-clang ports-gcc

# uses pledge()
WANTLIB =	${COMPILER_LIBCXX} avahi-client avahi-common c config
WANTLIB +=	crypto gio-2.0 glib-2.0 gobject-2.0 iconv intl m popt
WANTLIB +=	sndio ssl

LIB_DEPENDS =	devel/libconfig \
		devel/glib2 \
		devel/popt \
		net/avahi,-libs

CONFIGURE_STYLE =	autoreconf
SEPARATE_BUILD =	Yes
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_ARGS =	--with-avahi \
			--with-mpris-interface \
			--with-os=openbsd \
			--with-sndio \
			--with-ssl=openssl \
			--without-configfiles

DBUS_SVC =		org.mpris.MediaPlayer2.ShairportSync
DBUS_DIR =		${PREFIX}/share/dbus-1/system.d/
EXAMPLES_DIR =		${PREFIX}/share/examples/${PKGSTEM}
HOME_DIR =		${LOCALSTATEDIR}/spool/${PKGSTEM}
SUBST_VARS =		DBUS_SVC \
			HOME_DIR

DEBUG_PACKAGES =	${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA_DIR} ${DBUS_DIR}
	${SUBST_DATA} {${FILESDIR},${DBUS_DIR}}/${DBUS_SVC}.conf
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	${INSTALL_DATA} ${WRKSRC}/scripts/${PKGSTEM}.conf ${EXAMPLES_DIR}/

.include <bsd.port.mk>
