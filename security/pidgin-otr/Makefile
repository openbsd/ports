# $OpenBSD: Makefile,v 1.9 2009/06/04 06:18:09 jasper Exp $

COMMENT=	allows deniable private conversations using Pidgin

DISTNAME=	pidgin-otr-3.2.0
CATEGORIES=	security net

HOMEPAGE=	http://www.cypherpunks.ca/otr/

MASTER_SITES=	${HOMEPAGE}

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:pidgin->=2.0.0:net/pidgin
BUILD_DEPENDS=	${RUN_DEPENDS}
LIB_DEPENDS=	otr.>=3.2:libotr->=3.2.0:security/libotr

MODULES=	devel/gettext \
		textproc/intltool
WANTLIB=	gpg-error gcrypt

USE_X11=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS+=	--tag=disable-static

SHARED_ONLY=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib "

AUTOCONF_VERSION=2.59
AUTOMAKE_VERSION=1.9
BUILD_DEPENDS+=	${MODGNU_AUTOCONF_DEPENDS} \
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
