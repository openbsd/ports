COMMENT =	library and tools to access NTFS

VERSION =	20260727
BASENAME =	libfsntfs
DISTNAME =	${BASENAME}-experimental-${VERSION}
PKGNAME =	${DISTNAME:S/-experimental//}

SHARED_LIBS +=  fsntfs                       0.2 # 1.0

WANTLIB =  ${MODPY_WANTLIB}
WANTLIB += bfio c fuse fwnt iconv intl m pthread util crypto ssl

CONFIGURE_ARGS +=	--enable-python

WRKDIST =	${WRKDIR}/${PKGNAME}

MODULES +=	lang/python

BUILD_DEPENDS =	devel/gettext,-tools \
		devel/py-setuptools

LIB_DEPENDS +=	devel/libbfio \
		sysutils/libfwnt

# Tests use autoconf
AUTOCONF_VERSION =	2.72
TEST_DEPENDS +=		devel/autoconf/${AUTOCONF_VERSION}

.include <bsd.port.mk>
