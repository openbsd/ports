# $OpenBSD: Makefile,v 1.40 2016/06/12 06:32:15 mglocker Exp $

COMMENT=	ICB plugin for irssi

GH_ACCOUNT=	ailin-nemui
GH_PROJECT=	irssi-icb
GH_COMMIT=	8f7060835355d5f620a5d3b75a45336ab8efefd9

DISTNAME=	irssi-icb-0.16pre20160307
REVISION=	0

CATEGORIES=     net

RUN_DEPENDS=	net/irssi

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes

LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-irssi=${LOCALBASE}/include/irssi

AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.15
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/glib2 \
		devel/libtool \
		net/irssi

post-patch:
	cd ${WRKSRC} && AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	    AUTOMAKE_VERSION=${AUTOMAKE_VERSION} sh ./autorun.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/irssi
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/irssi/icb-plugin.txt

.include <bsd.port.mk>
