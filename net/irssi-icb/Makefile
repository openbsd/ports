# $OpenBSD: Makefile,v 1.14 2007/09/15 22:36:54 merdely Exp $

SHARED_ONLY=	Yes

COMMENT=	ICB plugin for irssi

DISTNAME=	irssi-icb-0.14
PKGNAME=	${DISTNAME}p0
MASTER_SITES=   http://humppa.nl/distfiles/

CATEGORIES=     net

BUILD_DEPENDS=  ::net/irssi:configure \
		::devel/glib
RUN_DEPENDS=  	:irssi-*:net/irssi

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-irssi=${WRKDIR}/irssi-src

post-extract:
	@ln -sf ${WRKDIR}/net/irssi/irssi-* ${WRKDIR}/irssi-src

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/irssi
	${INSTALL_DATA} ${WRKSRC}/README \
	   		${PREFIX}/share/doc/irssi/icb-plugin.txt

.include <bsd.port.mk>
