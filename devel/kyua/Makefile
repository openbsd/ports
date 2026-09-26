COMMENT =		testing framework
DISTNAME =		kyua-0.14.1

CATEGORIES =		devel
HOMEPAGE =		https://github.com/freebsd/kyua

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c ${MODLUA_WANTLIB} lutok m sqlite3 z

SITES =			https://github.com/freebsd/kyua/releases/download/${DISTNAME}/

COMPILER =		base-clang ports-gcc

MODULES =		lang/lua
MODLUA_VERSION =	5.4
MODLUA_SA =		Yes

LIB_DEPENDS =		databases/sqlite3 \
			devel/lutok

# Test if files are installed correctly
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH}
TEST_TARGET =		installcheck

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--with-doxygen=no

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
