# $OpenBSD: Makefile,v 1.12 2006/06/23 06:37:27 jasper Exp $

NOT_FOR_ARCHS=  ${NO_SHARED_ARCHS}

COMMENT=	"ICB plugin for irssi"

DISTNAME=	irssi-icb-0.14
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

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-irssi=${WRKDIR}/irssi-src

post-extract:
	@ln -sf ${WRKDIR}/net/irssi/irssi-* ${WRKDIR}/irssi-src

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/irssi
	${INSTALL_DATA} ${WRKSRC}/README \
	   		${PREFIX}/share/doc/irssi/icb-plugin.txt

.include <bsd.port.mk>
