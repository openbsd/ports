# $OpenBSD: Makefile,v 1.36 2016/03/06 13:40:04 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	ICB plugin for irssi

DISTNAME=	irssi-icb-0.15
REVISION=	0

CATEGORIES=     net

BUILD_DEPENDS=	net/irssi \
		devel/glib2
RUN_DEPENDS=	net/irssi

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=   https://github.com/downloads/jperkin/irssi-icb/

LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-irssi=${LOCALBASE}/include/irssi

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/irssi
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/irssi/icb-plugin.txt

.include <bsd.port.mk>
