COMMENT =		Automated Testing Framework
DISTNAME =		atf-0.26

SHARED_LIBS +=		atf-c++                   1.0 # 0.0
SHARED_LIBS +=		atf-c                     1.0 # 0.0

CATEGORIES =		devel
HOMEPAGE =		https://github.com/freebsd/atf

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB +=		c m ${COMPILER_LIBCXX}

SITES =			https://github.com/freebsd/atf/releases/download/${DISTNAME}/

COMPILER =		base-clang ports-gcc

BUILD_DEPENDS =		devel/kyua

TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/kyua

TEST_TARGET =		installcheck

CONFIGURE_STYLE =	gnu
# Don't pickup bash
CONFIGURE_ENV =		ATF_SHELL=/bin/sh

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
