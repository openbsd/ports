# $OpenBSD: Makefile,v 1.80 2022/02/03 22:17:27 sthen Exp $

COMMENT-main =	another eDonkey P2P file sharing client
COMMENT-web =	webserver interface to amuled
COMMENT-daemon =stand-alone daemon/cmdline for amule

V =		2.3.3
DISTNAME =	aMule-$V
CATEGORIES =	net

HOMEPAGE =	http://www.amule.org/
PORTROACH =	site:https://github.com/amule-project/amule/releases/

MULTI_PACKAGES =-main -web -daemon

PKGNAME-main =	amule-$V
PKGNAME-daemon =amuled-$V
PKGNAME-web =	amuleweb-$V

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=amule/}
EXTRACT_SUFX =	.tar.xz

LIB_DEPENDS =
WANTLIB =
RUN_DEPENDS =

COMPILER =		base-clang ports-gcc base-gcc

# bison needed if .y files are patched
BUILD_DEPENDS =		devel/bison \
			devel/gettext,-tools

commonLIB_DEPENDS =	x11/wxWidgets>=3.0.4

LIB_DEPENDS-main =	${LIB_DEPENDS} ${commonLIB_DEPENDS} \
			devel/cryptopp>=5.6.0 \
			graphics/gd

LIB_DEPENDS-daemon =	${LIB_DEPENDS} ${commonLIB_DEPENDS} \
			devel/cryptopp>=5.6.0

LIB_DEPENDS-web =	${LIB_DEPENDS} ${commonLIB_DEPENDS} \
			converters/libiconv \
			devel/gettext,-runtime

RUN_DEPENDS-main =	${RUN_DEPENDS} \
			devel/desktop-file-utils

commonWANTLIB =		c execinfo m pthread ${COMPILER_LIBCXX} \
			wx_baseu-3.0 wx_baseu_net-3.0 z
WANTLIB-main =		${WANTLIB} ${commonWANTLIB} \
			cryptopp gd readline wx_gtk3u_adv-3.0 wx_gtk3u_core-3.0

WANTLIB-daemon =	${WANTLIB} ${commonWANTLIB} \
			cryptopp readline

WANTLIB-web =		${WANTLIB} ${commonWANTLIB} \
			iconv intl png readline

USE_GMAKE =		Yes

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69

CONFIGURE_ARGS =	--disable-optimize \
			--disable-profile \
			--disable-plasmamule \
			--disable-upnp \
			--disable-xas \
			--enable-alc \
			--enable-alcc \
			--enable-amule-daemon \
			--enable-amule-gui \
			--enable-amulecmd \
			--enable-cas \
			--enable-webserver \
			--enable-wxcas \
			--with-denoise-level=0 \
			--with-libiconv-prefix=${LOCALBASE} \
			--with-libpng-config=${LOCALBASE}/bin/libpng-config

.ifndef DEBUG
CONFIGURE_ARGS +=	--disable-debug
.else
CONFIGURE_ARGS +=	--enable-debug
.endif

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS=-lexecinfo \
			LOCALDIR="${LOCALBASE}" \
			X11R6DIR="${X11BASE}" \
			ac_cv_header_bfd_h=false

MAKE_FLAGS +=		CXXFLAGS="${CXXFLAGS} -Wno-deprecated \
				  -Wno-shadow -Wno-sign-compare \
				  -Wno-unused"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/utils/cas/configfile.c
	rm ${WRKSRC}/docs/man/a*.*.1 \
		${WRKSRC}/docs/man/e*.*.1 \
		${WRKSRC}/src/utils/*/docs/a*.*.1 \
		${WRKSRC}/src/utils/*/docs/c*.*.1 \
		${WRKSRC}/src/utils/*/docs/w*.*.1

post-install:
	${INSTALL_SCRIPT} ${WRKDIST}/src/utils/scripts/mldonkey_importer.pl \
		${PREFIX}/bin/mldonkey_importer

.include <bsd.port.mk>
