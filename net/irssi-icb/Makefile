# $OpenBSD: Makefile,v 1.22 2010/07/12 22:07:38 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	ICB plugin for irssi

DISTNAME=	irssi-icb-0.14
REVISION=	6
MASTER_SITES=   http://www.phil.uu.nl/~lievisse/distfiles/

CATEGORIES=     net

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		::net/irssi:configure \
		::devel/glib2
RUN_DEPENDS=  	:irssi-*:net/irssi

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_STYLE= gnu
AUTOCONF_VERSION=2.61
AUTOMAKE_VERSION=1.9
CONFIGURE_ARGS+= --with-irssi=${WRKDIR}/irssi-src

AUTO_ENV=	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

post-extract:
	@ln -sf ${WRKDIR}/net/irssi/irssi-* ${WRKDIR}/irssi-src

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
