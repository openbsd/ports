# $OpenBSD: Makefile,v 1.202 2022/01/03 16:18:52 rsadowski Exp $

DPB_PROPERTIES =	parallel

COMMENT =	portable build system

VER =		3.20.3
EPOCH =		0
DISTNAME =	cmake-${VER}
CATEGORIES =	devel
REVISION =	2

HOMEPAGE =	https://www.cmake.org/

MASTER_SITES =	https://www.cmake.org/files/v${VER:R}/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} archive c curl curses expat form
WANTLIB += jsoncpp m rhash uv z

COMPILER =		base-clang ports-gcc

MODULES =		lang/python
MODPY_RUNDEP =		No

BUILD_DEPENDS =		textproc/py-sphinx${MODPY_FLAVOR}>=4.0.2

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
			--sphinx-html \
			--sphinx-man \
			--system-libs \
			--verbose

CONFIGURE_ENV +=	MAKE=${MAKE_PROGRAM}

MAKE_FLAGS +=		VERBOSE=1

# bootstrap build
CONFIGURE_ENV += MODCMAKE_PORT_BUILD=yes
MAKE_ENV += MODCMAKE_PORT_BUILD=yes

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
	find ${WRKSRC}/Modules -name "*.cmake" -exec ${SUBST_CMD} {} +
	find ${WRKSRC}/Tests -name "CMakeLists.txt" -exec ${SUBST_CMD} {} +
	${SUBST_CMD} ${SUBST_FILES}

post-install:
	@find ${WRKINST}${LOCALBASE} \( -name "*.bak" -o -name "*${PATCHORIG}" \
	    -o -name "*.beforesubst" \) -delete

.include <bsd.port.mk>
