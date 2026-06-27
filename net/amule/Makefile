COMMENT-main =	another eDonkey P2P file sharing client
COMMENT-web =	webserver interface to amuled
COMMENT-daemon =stand-alone daemon/cmdline for amule

V =		3.0.1
GH_ACCOUNT =	amule-org
GH_PROJECT =	amule
GH_TAGNAME =	$V

CATEGORIES =	net

HOMEPAGE =	https://amule-org.github.io/

MULTI_PACKAGES =-main -web -daemon

PKGNAME-main =	amule-$V
PKGNAME-web =	amuleweb-$V
PKGNAME-daemon = amuled-$V

# GPLv2+
PERMIT_PACKAGE = Yes

WANTLIB =	${COMPILER_LIBCXX} \
		c m pthread z \
		cryptopp intl ixml upnp \
		wx_baseu-3.2 wx_baseu_net-3.2 wx_gtk3u_core-3.2

WANTLIB-main =	${WANTLIB} cryptopp curl gd glib-2.0 maxminddb
WANTLIB-web =	${WANTLIB} png readline
WANTLIB-daemon = ${WANTLIB} cryptopp curl glib-2.0 readline

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake \
		lang/python
MODPY_RUNDEP =	No

BUILD_DEPENDS =	devel/bison \
		devel/boost \
		devel/gettext,-tools

LIB_DEPENDS =	devel/cryptopp \
		net/libupnp \
		x11/wxWidgets

LIB_DEPENDS-main = ${LIB_DEPENDS} \
		devel/cryptopp \
		graphics/gd \
		net/libmaxminddb

LIB_DEPENDS-web = ${LIB_DEPENDS} \
		devel/gettext,-runtime

RUN_DEPENDS-main = devel/desktop-file-utils \
		x11/gtk+4,-guic

CONFIGURE_ARGS = \
	-D ENABLE_CCACHE=OFF \
	-D BUILD_MONOLITHIC=ON \
	-D BUILD_ED2K=ON \
	-D BUILD_DAEMON=ON \
	-D BUILD_REMOTEGUI=ON \
	-D BUILD_AMULECMD=ON \
	-D BUILD_WEBSERVER=ON \
	-D BUILD_ALC=ON \
	-D BUILD_ALCC=ON \
	-D BUILD_CAS=ON \
	-D BUILD_WXCAS=ON \
	-D CRYPTOPP_INCLUDE_PREFIX=${LOCALBASE}/include/cryptopp \
	-D DEFAULT_VERSION_CHECK=OFF

CXXFLAGS +=	-I${LOCALBASE}/include

post-install:
	${INSTALL_SCRIPT} ${WRKDIST}/src/utils/scripts/mldonkey_importer.pl \
		${PREFIX}/bin/mldonkey_importer

.include <bsd.port.mk>
