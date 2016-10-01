# $OpenBSD: Makefile,v 1.4 2016/10/01 11:54:16 naddy Exp $

COMMENT =		finite-state compiler and C library

DISTNAME =		foma-0.9.16alpha
PKGNAME =		${DISTNAME:S/alpha//}
REVISION =		0

SHARED_LIBS +=		foma                      0.0 # 0.9.16

CATEGORIES =		math devel

HOMEPAGE =		https://code.google.com/p/foma/

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB +=		c readline termcap z

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=foma/}

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS}" \
			VERSION="${LIBfoma_VERSION}"
FAKE_FLAGS =		prefix="${WRKINST}${PREFIX}"

USE_GMAKE =		Yes

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/foma

.include <bsd.port.mk>
