# $OpenBSD: Makefile,v 1.4 2017/04/10 11:45:25 sthen Exp $

COMMENT =		Automated Testing Framework
DISTNAME =		atf-0.18
REVISION =		0

SHARED_LIBS +=		atf-c++                   0.0 # 0.0
SHARED_LIBS +=		atf-c                     0.0 # 0.0

CATEGORIES =		devel
HOMEPAGE =		https://github.com/jmmv/atf

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c m ${LIBCXX}

MASTER_SITES =		https://github.com/jmmv/atf/releases/download/${DISTNAME}/

CONFIGURE_STYLE =	gnu
# Don't pickup bash
CONFIGURE_ENV =		ATF_SHELL=/bin/sh

TEST_DEPENDS =		${BASE_PKGPATH} \
			devel/kyua-cli
TEST_TARGET =		installcheck

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
