COMMENT=	GnuPG Made Easy

VERSION =	2.0.1
REVISION =	0
DISTNAME =	gpgme-${VERSION}

CATEGORIES =	security devel

SHARED_LIBS +=  gpgme                25.0     # 45.1

HOMEPAGE =	https://www.gnupg.org/software/gpgme/

SITES =		${SITE_GNUPG:=gpgme/}
EXTRACT_SUFX =	.tar.bz2

# GPLv2 - LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += assuan c gpg-error iconv intl m pthread

COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

CONFIGURE_STYLE =	gnu

BUILD_DEPENDS =		security/gnupg
RUN_DEPENDS =		security/gnupg

LIB_DEPENDS =		devel/gettext,-runtime \
			security/libgpg-error \
			security/libassuan

# needed for the regression tests
USE_GMAKE =		Yes

.include <bsd.port.mk>
