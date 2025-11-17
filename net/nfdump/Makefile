COMMENT =		tools to collect and process netflow data

V =			1.7.7
GH_ACCOUNT =		phaag
GH_PROJECT =		nfdump
GH_TAGNAME =		v$V

SHARED_LIBS +=  nffile               1.0      # unknown
SHARED_LIBS +=  nfdump               4.0      # unknown

CATEGORIES =		net

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += X11 bz2 c cairo expat freetype ft glib-2.0 gobject-2.0
WANTLIB += harfbuzz iconv intl lz4 m pango-1.0 pangocairo-1.0
WANTLIB += pcap png pthread rrd xcb xml2 z zstd

# gnu17
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c
DEBUG_PACKAGES =	${BUILD_PACKAGES}

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16
AUTORECONF =		./autogen.sh

CONFIGURE_ARGS +=	--enable-ftconv \
			--enable-ja4 \
			--enable-maxmind \
			--enable-nfpcapd \
			--enable-nfprofile \
			--enable-nftrack \
			--enable-sflow \
			--enable-tor \
			--with-rrdpath=${LOCALBASE} \
			--with-ftpath=${LOCALBASE}

LIB_DEPENDS =		archivers/bzip2 \
			archivers/lz4 \
			archivers/zstd \
			net/flow-tools>=0.68.5 \
			net/rrdtool

CONFIGURE_ENV =		LDFLAGS="${LDFLAGS} -L${X11BASE}/lib" \
			ac_cv_path_DOXYGEN=
TEST_FLAGS =		TZ=CET
FAKE_FLAGS =		sysconfdir=${PREFIX}/share/examples/nfdump

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nfdump
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nfdump

.include <bsd.port.mk>
