# $OpenBSD: Makefile,v 1.9 2019/07/12 20:44:03 sthen Exp $

COMMENT =		Automated Testing Framework
DISTNAME =		atf-0.18
REVISION =		3

SHARED_LIBS +=		atf-c++                   0.0 # 0.0
SHARED_LIBS +=		atf-c                     0.0 # 0.0

CATEGORIES =		devel
HOMEPAGE =		https://github.com/jmmv/atf

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

MASTER_SITES =		https://github.com/jmmv/atf/releases/download/${DISTNAME}/

COMPILER =		base-clang ports-gcc base-gcc

CONFIGURE_STYLE =	gnu
# Don't pickup bash
CONFIGURE_ENV =		ATF_SHELL=/bin/sh

TEST_DEPENDS =		${BASE_PKGPATH} \
			devel/kyua-cli
TEST_TARGET =		installcheck

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
