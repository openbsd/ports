# $OpenBSD: Makefile,v 1.32 2014/01/09 23:28:49 jca Exp $

SHARED_ONLY=	Yes

COMMENT=	ICB plugin for irssi

DISTNAME=	irssi-icb-0.14
REVISION=	10
MASTER_SITES=   http://distfiles.nl/

CATEGORIES=     net

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		net/irssi \
		devel/glib2
RUN_DEPENDS=	net/irssi

# GPL
PERMIT_PACKAGE_CDROM=   Yes

# Needs AC_PROG_LIBTOOL
BUILD_DEPENDS += devel/libtool
LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_STYLE= gnu
AUTOCONF_VERSION=2.61
AUTOMAKE_VERSION=1.9
CONFIGURE_ARGS+= --with-irssi=${LOCALBASE}/include/irssi/

AUTO_ENV=	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

pre-configure:
	cd ${WRKSRC} && ${AUTO_ENV} aclocal
	cd ${WRKSRC} && ${AUTO_ENV} automake\
		--add-missing -f --foreign
	cd ${WRKSRC} && ${AUTO_ENV} autoconf

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/irssi
	${INSTALL_DATA} ${WRKSRC}/README \
	   		${PREFIX}/share/doc/irssi/icb-plugin.txt

.include <bsd.port.mk>
