# $OpenBSD: Makefile,v 1.4 2002/04/24 21:34:48 espie Exp $

NOT_FOR_ARCHS=  ${NO_SHARED_ARCHS}

COMMENT=	"icb plugin for irssi"

DISTNAME=	irssi-icb-0.13
MASTER_SITES=   http://www.irssi.org/files/icb/ \
                http://nl.irssi.org/files/icb/ \
                http://fi.irssi.org/files/icb/ \
                http://no.irssi.org/files/icb/ \
                http://de.irssi.org/files/icb/ \
                http://uk.irssi.org/files/icb/ \
                http://pl.irssi.org/files/icb/ \
                http://us.irssi.org/files/icb/

CATEGORIES=     net
NEED_VERSION=   1.525

MAINTAINER=	David Lebel <lebel@openbsd.org>

BUILD_DEPENDS=  ::net/irssi:configure
RUN_DEPENDS=  	::net/irssi

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
