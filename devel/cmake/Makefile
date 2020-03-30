# $OpenBSD: Makefile,v 1.183 2020/03/30 20:12:38 rsadowski Exp $

DPB_PROPERTIES =	parallel

COMMENT =	portable build system

VER =		3.16.2
EPOCH =		0
DISTNAME =	cmake-${VER}
CATEGORIES =	devel
REVISION =	1

HOMEPAGE =	https://www.cmake.org/

MASTER_SITES =	https://www.cmake.org/files/v${VER:R}/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} archive c curl curses expat form
WANTLIB += jsoncpp m rhash uv z

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS +=	textproc/py-sphinx>=1.4

LIB_DEPENDS =		archivers/libarchive \
			devel/libuv \
			devel/jsoncpp \
			net/curl \
			security/rhash

CONFIGURE_STYLE =	simple

CONFIGURE_ARGS =	--datadir=share/cmake \
			--docdir=share/doc/cmake \
			--mandir=man \
			--no-qt-gui \
			--parallel=${MAKE_JOBS} \
			--prefix=${PREFIX} \
			--sphinx-build=${LOCALBASE}/bin/sphinx-build \
			--sphinx-html \
			--sphinx-man \
			--system-libs \
			--verbose

CONFIGURE_ENV +=	MAKE=${MAKE_PROGRAM}

MAKE_FLAGS +=		VERBOSE=1

PORTHOME =		${WRKDIR}

SEPARATE_BUILD =	Yes

TEST_TARGET =		test

TEST_DEPENDS +=		devel/git

SUBST_FILES =	${WRKSRC}/Source/cmLocalGenerator.cxx \
		${WRKSRC}/Source/CPack/cmCPackGenerator.cxx \
		${WRKSRC}/bootstrap

post-patch:
	find ${WRKSRC}/Modules -name "*.cmake" \
		-exec perl -e 's,/usr/(local|X11R6),${LOCALBASE},g' {} +
	find ${WRKSRC}/Tests -name "CMakeLists.txt" \
		-exec perl -e 's,/usr/(local|X11R6),${LOCALBASE},g' {} +
	perl -e 's,/usr/local,${LOCALBASE},g' \
		${SUBST_FILES}
	perl -e 's,/usr/include,${LOCALBASE}/include,' \
		${WRKSRC}/Modules/FindDCMTK.cmake \

pre-configure:
	cp ${FILESDIR}/*.cmake ${WRKSRC}/Modules/
	find ${WRKSRC}/Modules -name "*.cmake" -exec ${SUBST_CMD} {} +
	find ${WRKSRC}/Tests -name "CMakeLists.txt" -exec ${SUBST_CMD} {} +
	${SUBST_CMD} ${SUBST_FILES}

post-install:
	@find ${WRKINST}${LOCALBASE} \( -name "*.bak" -o -name "*.orig" -o \
		-name "*.beforesubst" \) -delete

.include <bsd.port.mk>
