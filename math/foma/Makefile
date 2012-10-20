# $OpenBSD: Makefile,v 1.1.1.1 2012/10/20 04:34:32 bentley Exp $

COMMENT =		finite-state compiler and C library

DISTNAME =		foma-0.9.16alpha
PKGNAME =		${DISTNAME:S/alpha//}

SHARED_LIBS +=		foma                      0.0 # 0.9.16

CATEGORIES =		math devel

HOMEPAGE =		https://code.google.com/p/foma/

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

WANTLIB +=		c readline termcap z

MASTER_SITES =		https://foma.googlecode.com/files/

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS}" \
			VERSION="${LIBfoma_VERSION}"
FAKE_FLAGS =		prefix="${WRKINST}${PREFIX}"

USE_GMAKE =		Yes

NO_REGRESS =		Yes

WRKDIST =		${WRKDIR}/foma

.include <bsd.port.mk>
