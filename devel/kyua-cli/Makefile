# $OpenBSD: Makefile,v 1.7 2017/07/26 22:45:18 sthen Exp $

COMMENT =		testing framework
DISTNAME =		kyua-cli-0.8
REVISION =		2

CATEGORIES =		devel
HOMEPAGE =		https://github.com/jmmv/kyua

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODLUA_WANTLIB} atf-c atf-c++ c lutok m pthread sqlite3 ${COMPILER_LIBCXX}

MASTER_SITES =		https://github.com/jmmv/kyua/releases/download/${DISTNAME}/

MODULES =		lang/lua
MODLUA_SA =		Yes

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/kyua-testers

LIB_DEPENDS =		devel/atf \
			databases/sqlite3 \
			devel/lutok

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-doxygen

# Install the package and use the following TEST_TARGET if you want to
# perform the tests on the installed files.
#TEST_TARGET =		installcheck

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
