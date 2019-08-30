# $OpenBSD: Makefile,v 1.45 2019/08/30 07:24:49 kn Exp $

COMMENT=	ICB plugin for irssi

GH_ACCOUNT=	mglocker
GH_PROJECT=	irssi-icb
GH_COMMIT=	c4e2ea8939b5b75d1941ebe3335475482d218838

DISTNAME=	irssi-icb-0.17
REVISION=	1

CATEGORIES=	net

RUN_DEPENDS=	net/irssi

# GPLv2+
PERMIT_PACKAGE=   Yes

LIBTOOL_FLAGS=	--tag=disable-static
CONFIGURE_STYLE= autoreconf
CONFIGURE_ARGS+= --with-irssi=${LOCALBASE}/include/irssi

AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.15
AUTORECONF=	./autorun.sh
SEPARATE_BUILD=	Yes

BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/glib2 \
		devel/libtool \
		net/irssi

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/irssi
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/irssi/icb-plugin.txt

.include <bsd.port.mk>
