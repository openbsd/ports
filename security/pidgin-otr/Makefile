# $OpenBSD: Makefile,v 1.20 2013/08/15 16:33:31 stsp Exp $

COMMENT =	allows deniable private conversations using Pidgin

DISTNAME =	pidgin-otr-4.0.0
CATEGORIES =	security net
EPOCH =		0

HOMEPAGE =	http://www.cypherpunks.ca/otr/

MASTER_SITES =	${HOMEPAGE}

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	net/pidgin>=2.0.0
BUILD_DEPENDS =	${RUN_DEPENDS} \
		devel/libtool
LIB_DEPENDS =	security/libotr>=4.0.0

MODULES =	devel/gettext \
		textproc/intltool
WANTLIB =	c gpg-error gcrypt otr>=4.0 pthread

USE_LIBTOOL = 	gnu
LIBTOOL_FLAGS += --tag=disable-static

SHARED_ONLY =	Yes

CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib "

AUTOCONF_VERSION = 2.65
AUTOMAKE_VERSION = 1.9
BUILD_DEPENDS += ${MODGNU_AUTOCONF_DEPENDS} \
		 ${MODGNU_AUTOMAKE_DEPENDS}

pre-configure:
	cd ${WRKSRC} && ${SETENV} AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} autoreconf -s -i
	cd ${WRKSRC} && ${LOCALBASE}/bin/intltoolize --force --copy

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pidgin
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/pidgin/otr-plugin.txt

.include <bsd.port.mk>
