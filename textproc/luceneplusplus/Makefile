V =		3.0.8
PKGNAME =	luceneplusplus-${V}
COMMENT =	C++ port of the Java Lucene library, the text search engine

GH_ACCOUNT =	luceneplusplus
GH_PROJECT =	LucenePlusPlus
GH_TAGNAME =	rel_${V}

SHARED_LIBS +=	lucene++		1.0
SHARED_LIBS +=	lucene++-contrib	1.0

CATEGORIES =	textproc

# LGPL3
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} m
WANTLIB += boost_atomic-mt boost_chrono-mt boost_date_time-mt
WANTLIB += boost_filesystem-mt boost_iostreams-mt boost_regex-mt
WANTLIB += boost_system-mt boost_thread-mt z

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

LIB_DEPENDS =		devel/boost

# devel/gtest is too new for this
CONFIGURE_ARGS +=	-DENABLE_TEST=FALSE

MODCMAKE_LDFLAGS =	-L${LOCALBASE}/lib

do-test:
	cd ${WRKBUILD} && ./src/test/lucene++-tester \
		--test_dir="${WRKSRC}/src/test/testfiles/"

.include <bsd.port.mk>
