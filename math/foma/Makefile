COMMENT =		finite-state compiler and C library

DISTNAME =		foma-0.9.18.20200928

SHARED_LIBS +=		foma                      1.0

CATEGORIES =		math devel

GH_ACCOUNT =		mhulden
GH_PROJECT =		foma
GH_COMMIT =		7a996b08f5bbcf2d41ca17f40b028ac617f2fa6a

# Apache 2.0
PERMIT_PACKAGE =		Yes

WANTLIB += c curses readline z

BUILD_DEPENDS =		devel/bison

WRKSRC =		${WRKDIST}/foma

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS}" \
			VERSION="${LIBfoma_VERSION}"
FAKE_FLAGS =		prefix="${WRKINST}${PREFIX}"

USE_GMAKE =		Yes

NO_TEST =		Yes

.include <bsd.port.mk>
