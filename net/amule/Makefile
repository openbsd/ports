# $OpenBSD: Makefile,v 1.46 2014/03/17 23:22:02 sthen Exp $

COMMENT-main =	another eDonkey P2P file sharing client
COMMENT-web =	webserver interface to amuled
COMMENT-daemon =stand-alone daemon/cmdline for amule

V =		2.3.1
DISTNAME =	aMule-$V
REVISION =	17
CATEGORIES =	net

HOMEPAGE =	http://www.amule.org/

MULTI_PACKAGES =-main -web -daemon

PKGNAME-main =	amule-$V
PKGNAME-daemon =amuled-$V
PKGNAME-web =	amuleweb-$V

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MAINTAINER =	David Coppa <dcoppa@openbsd.org>
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=amule/}
EXTRACT_SUFX =	.tar.xz

.if defined (SUBPACKAGE) && ${SUBPACKAGE:M-main}
MODULES +=	converters/libiconv
.endif

LIB_DEPENDS =
WANTLIB =
RUN_DEPENDS =

# bison needed if .y files are patched
BUILD_DEPENDS =		devel/bison \
			devel/flex \
			devel/gettext

commonLIB_DEPENDS =	x11/wxWidgets>=2.8.12 \
			net/libupnp>=1.6.6

LIB_DEPENDS-main =	${LIB_DEPENDS} ${commonLIB_DEPENDS} \
			devel/cryptopp>=5.6.0 \
			graphics/gd \
			net/GeoIP

LIB_DEPENDS-daemon =	${LIB_DEPENDS} ${commonLIB_DEPENDS} \
			devel/cryptopp>=5.6.0

LIB_DEPENDS-web =	${LIB_DEPENDS} ${commonLIB_DEPENDS}

RUN_DEPENDS-main =	${RUN_DEPENDS} \
			devel/desktop-file-utils

commonWANTLIB =		c ixml m pthread stdc++ threadutil upnp \
			wx_base wx_base_net z
WANTLIB-main =		${WANTLIB} ${commonWANTLIB} \
			GeoIP X11 cryptopp fontconfig tiff vpx \
			freetype gd jpeg png wx_gtk2_adv wx_gtk2_core
WANTLIB-daemon =	${WANTLIB} ${commonWANTLIB} \
			cryptopp readline termcap
WANTLIB-web =		${WANTLIB} ${commonWANTLIB} \
			png readline termcap

USE_GMAKE =		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.65

CONFIGURE_ARGS =	--disable-optimize \
			--disable-profile \
			--disable-plasmamule \
			--disable-xas \
			--enable-alc \
			--enable-alcc \
			--enable-amule-daemon \
			--enable-amule-gui \
			--enable-amulecmd \
			--enable-cas \
			--enable-geoip \
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
			LOCALDIR="${LOCALBASE}" \
			X11R6DIR="${X11BASE}" \
			ac_cv_prog_LEX="${LOCALBASE}/bin/gflex"

MAKE_FLAGS +=		CXXFLAGS="${CXXFLAGS} -Wno-deprecated \
					-Wno-sign-compare -Wno-unused"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/utils/cas/configfile.c

post-install:
	${INSTALL_SCRIPT} ${WRKDIST}/src/utils/scripts/mldonkey_importer.pl \
		${PREFIX}/bin/mldonkey_importer

.include <bsd.port.mk>
