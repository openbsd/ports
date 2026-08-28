COMMENT =	library and tools to access FAT file systems

VERSION =	20260823
BASENAME =	libfsfat
DISTNAME =	${BASENAME}-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}

SHARED_LIBS +=  fsfat			0.0 # 1.0

WANTLIB += bfio c crypto fuse iconv intl m pthread util ssl
WANTLIB += ${MODPY_WANTLIB}

MODULES =		lang/python

CONFIGURE_ARGS +=	--enable-python \
			AWK=/usr/bin/awk

LIB_DEPENDS +=	devel/libbfio

# Tests use autoconf
AUTOCONF_VERSION =	2.72
TEST_DEPENDS +=		devel/autoconf/${AUTOCONF_VERSION}

.include <bsd.port.mk>
