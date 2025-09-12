DPB_PROPERTIES =	parallel

PKGNAME =	cmake-core-${VER}
PKGNAME-main =	cmake-core-${VER}
PKGNAME-help =	cmake-help-${VER}
REVISION-main = 0

COMMENT-main =	portable build system
COMMENT-help =	files for CMake --help

MULTI_PACKAGES =	-main -help

COMPILER =		base-clang ports-gcc

WANTLIB-main += ${WANTLIB}
WANTLIB-main += ${COMPILER_LIBCXX} archive c curl curses expat form
WANTLIB-main += jsoncpp m rhash uv z

LIB_DEPENDS-main =	${LIB_DEPENDS} \
			archivers/libarchive \
			devel/libuv \
			devel/jsoncpp \
			net/curl \
			security/rhash

WANTLIB-help =		# empty
LIB_DEPENDS-help =	# empty
RUN_DEPENDS-help =	${BUILD_PKGPATH},-main

CONFIGURE_STYLE =	simple

CONFIGURE_ARGS +=	--datadir=share/cmake \
			--docdir=share/doc/cmake \
			--mandir=man \
			--parallel=${MAKE_JOBS} \
			--prefix=${PREFIX} \
			--system-libs \
			--no-system-cppdap \
			--verbose \
			--no-qt-gui

CONFIGURE_ENV +=	MAKE=${MAKE_PROGRAM}

MAKE_FLAGS +=		VERBOSE=1

# bootstrap build
CONFIGURE_ENV +=	MODCMAKE_PORT_BUILD=yes
MAKE_ENV +=		MODCMAKE_PORT_BUILD=yes

TEST_TARGET =		test
TEST_DEPENDS +=		devel/git

.include <bsd.port.mk>
