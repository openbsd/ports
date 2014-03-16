# $OpenBSD: Makefile,v 1.1.1.1 2014/03/16 11:28:11 sthen Exp $

COMMENT =		testing framework
DISTNAME =		kyua-cli-0.8

CATEGORIES =		devel
HOMEPAGE =		https://github.com/jmmv/kyua

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += atf-c atf-c++ c ${MODLUA_WANTLIB} lutok m sqlite3 stdc++

MASTER_SITES =		https://github.com/jmmv/kyua/releases/download/${DISTNAME}/

MODULES =		lang/lua
MODLUA_SA =		Yes

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/kyua-testers

LIB_DEPENDS =		devel/atf

FLAVORS =		# lua52 from lua.port.mk
FLAVOR ?=

.if ${FLAVOR:Mlua52}
LIB_DEPENDS +=		devel/lutok,${FLAVOR:Mlua52}
.else
LIB_DEPENDS +=		devel/lutok
.endif

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--without-doxygen

# Install the package and use the following TEST_TARGET if you want to
# perform the tests on the installed files.
#TEST_TARGET =		installcheck

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
