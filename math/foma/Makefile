# $OpenBSD: Makefile,v 1.5 2017/05/12 14:38:18 benoit Exp $

COMMENT =		finite-state compiler and C library

DISTNAME =		foma-0.9.17

SHARED_LIBS +=		foma                      0.1 # 0.9.16

CATEGORIES =		math devel

HOMEPAGE =		https://code.google.com/p/foma/

# Apache 2.0
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=		c readline termcap z

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=foma/}

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS}" \
			VERSION="${LIBfoma_VERSION}"
FAKE_FLAGS =		prefix="${WRKINST}${PREFIX}"

USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
