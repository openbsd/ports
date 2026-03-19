COMMENT =		basic file input/output abstraction C library

VERSION =		20240414
DISTNAME =		libbfio-alpha-${VERSION}
PKGNAME =		libbfio-${VERSION}

SHARED_LIBS +=  bfio                      0.1 # 1.0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/libyal/libbfio/wiki

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =		pthread
BUILD_DEPENDS =	

SITES =		https://github.com/libyal/libbfio/releases/download/${VERSION}/

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--mandir=${PREFIX}/man --disable-nls

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/libbfio-${VERSION}

.include <bsd.port.mk>
