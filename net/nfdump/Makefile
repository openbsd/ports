COMMENT-main =		tools to collect and process netflow data
COMMENT-nfprofile =	filters data from nfdump according to profiles

# 1.7.x is now available; NfSen must be updated to 1.3.9+ first
V =			1.6.24
GH_ACCOUNT =		phaag
GH_PROJECT =		nfdump
GH_TAGNAME =		v$V
FULLPKGNAME-main =	nfdump-$V
FULLPKGNAME-nfprofile =	nfprofile-$V
REVISION-main =		0
REVISION-nfprofile =	0

SHARED_LIBS +=	nfdump                    1.1

CATEGORIES =		net

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		bz2 c z

WANTLIB-nfprofile =  ${WANTLIB}
WANTLIB-nfprofile += X11 cairo expat freetype glib-2.0 gobject-2.0 harfbuzz
WANTLIB-nfprofile += iconv intl lzma m nfdump pango-1.0 pangocairo-1.0 png
WANTLIB-nfprofile += pthread rrd xcb xml2

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c
DEBUG_PACKAGES =	${BUILD_PACKAGES}

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.16
AUTORECONF =		./autogen.sh

CONFIGURE_ARGS +=	--enable-compat15 \
			--enable-ftconv \
			--enable-nfprofile \
			--enable-nftrack \
			--enable-nsel \
			--enable-sflow \
			--with-rrdpath=${LOCALBASE} \
			--with-ftpath=${LOCALBASE}

MULTI_PACKAGES =	-main -nfprofile

LIB_DEPENDS-main =	archivers/bzip2 \
			net/flow-tools>=0.68.5
WANTLIB-main =		${WANTLIB} ft

LIB_DEPENDS-nfprofile =	net/rrdtool \
			net/nfdump,-main
RUN_DEPENDS-nfprofile =	nfdump-$V:net/nfdump,-main

REORDER_DEPENDENCIES += ${PORTSDIR}/infrastructure/mk/automake.dep

post-extract:
	sed -i 's,^libnfdump_la_LDFLAGS = -release .*,libnfdump_la_LDFLAGS =,' \
	    ${WRKSRC}/bin/Makefile.am

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/nfdump
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/nfdump

CONFIGURE_ENV =		LDFLAGS="${LDFLAGS} -L${X11BASE}/lib" \
			ac_cv_path_DOXYGEN=
TEST_FLAGS =		TZ=CET

.include <bsd.port.mk>
