# $OpenBSD: Makefile,v 1.7 2019/05/17 16:19:39 sthen Exp $

COMMENT =		finite-state compiler and C library

DISTNAME =		foma-0.9.17
REVISION =		1

SHARED_LIBS +=		foma                      0.1 # 0.9.16

CATEGORIES =		math devel

HOMEPAGE =		https://bitbucket.org/mhulden/foma

# Apache 2.0
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c curses readline z

MASTER_SITES =		https://bitbucket.org/mhulden/foma/downloads/

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS}" \
			VERSION="${LIBfoma_VERSION}"
FAKE_FLAGS =		prefix="${WRKINST}${PREFIX}"

USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
