COMMENT =	library to access the Apple Partition Map volumes

VERSION =	20260713
BASENAME =	libvsapm
DISTNAME =	${BASENAME}-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}

SHARED_LIBS +=  vsapm				0.0 # 1.0

WANTLIB += bfio c iconv intl m pthread util
WANTLIB += ${MODPY_WANTLIB}

MODULES =		lang/python

CONFIGURE_ARGS +=	--enable-python \
			AWK=/usr/bin/awk

LIB_DEPENDS +=	devel/libbfio

# Tests use autoconf
AUTOCONF_VERSION =	2.72
TEST_DEPENDS +=		devel/autoconf/${AUTOCONF_VERSION}

.include <bsd.port.mk>
