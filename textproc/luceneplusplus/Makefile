V =		3.0.8
PKGNAME =	luceneplusplus-${V}
COMMENT =	C++ port of the Java Lucene library, the text search engine
REVISION =	5

GH_ACCOUNT =	luceneplusplus
GH_PROJECT =	LucenePlusPlus
GH_TAGNAME =	rel_${V}

SHARED_LIBS +=	lucene++		1.0
SHARED_LIBS +=	lucene++-contrib	1.0

CATEGORIES =	textproc

# LGPL3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} boost_atomic-mt boost_chrono-mt
WANTLIB += boost_container-mt boost_date_time-mt boost_filesystem-mt
WANTLIB += boost_iostreams-mt boost_random-mt boost_regex-mt boost_thread-mt
WANTLIB += m z

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

LIB_DEPENDS =		devel/boost

# devel/gtest is too new for this
CONFIGURE_ARGS +=	-DENABLE_TEST=FALSE

MODCMAKE_POLICY_VERSION_OVERRIDE = Yes

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

do-test:
	cd ${WRKBUILD} && ./src/test/lucene++-tester \
		--test_dir="${WRKSRC}/src/test/testfiles/"

.include <bsd.port.mk>
