# $OpenBSD: Makefile,v 1.8 2003/01/03 15:13:31 lebel Exp $

NOT_FOR_ARCHS=  ${NO_SHARED_ARCHS}

COMMENT=	"ICB plugin for irssi"

DISTNAME=	irssi-icb-0.14
MASTER_SITES=   http://www.irssi.org/files/plugins/icb/ \
                http://fi.irssi.org/files/plugins/icb/ \
                http://no.irssi.org/files/plugins/icb/ \
                http://de.irssi.org/files/plugins/icb/ \
                http://uk.irssi.org/files/plugins/icb/ \
                http://pl.irssi.org/files/plugins/icb/ \
                http://us.irssi.org/files/plugins/icb/

CATEGORIES=     net

MAINTAINER=	David Lebel <lebel@openbsd.org>

BUILD_DEPENDS=  ::net/irssi:configure
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
