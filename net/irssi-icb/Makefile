COMMENT=	ICB plugin for irssi

GH_ACCOUNT=	mglocker
GH_PROJECT=	irssi-icb
GH_COMMIT=	bfda7f633cabbc81a854d65aa62943e12ece16ea

DISTNAME=	irssi-icb-0.17
REVISION=	4

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
