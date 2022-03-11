# icu4c namespace problem when mixing gcc 4.2 and a c++11 compiler:
# undefined reference to `_ZN6icu_5713UnicodeStringC1EOS0_'
ONLY_FOR_ARCHS=		${CLANG_ARCHS}

COMMENT =		constraint grammar formalism variant

V =			1.3.2
DISTNAME =		cg3-$V
PKGNAME =		vislcg3-$V

SHARED_LIBS =		cg3                       2.0 # 0.0

CATEGORIES =		textproc

HOMEPAGE =		http://beta.visl.sdu.dk/cg3/chunked/

# GPLv3+
PERMIT_PACKAGE =		Yes

WANTLIB +=		c icui18n icuio icuuc m pthread ${COMPILER_LIBCXX}

MASTER_SITES =		https://github.com/GrammarSoft/cg3/releases/download/v$V/

EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/cmake

COMPILER =		base-clang ports-clang
BUILD_DEPENDS =		devel/boost
LIB_DEPENDS =		textproc/icu4c

.include <bsd.port.mk>
