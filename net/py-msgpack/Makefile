COMMENT =		messagepack (de)serializer

MODPY_EGG_VERSION =	1.0.4
REVISION =		2
EPOCH =			0
DISTNAME =		msgpack-${MODPY_EGG_VERSION}
PKGNAME =		py-msgpack-${MODPY_EGG_VERSION}

CATEGORIES =		net textproc

HOMEPAGE =		https://msgpack.org/

MAINTAINER =		Bjorn Ketelaars <bket@openbsd.org>

# same cherry-pick as in sysutils/borgbackup/1.1, see details in
# https://github.com/borgbackup/borg/pull/6149#issuecomment-1335632116 ff.
MASTER_SITES0 =		https://github.com/msgpack/msgpack-python/
# merged "Fallback to compiler defines when __BYTE_ORDER is not available"
# https://github.com/msgpack/msgpack-python/pull/513
PATCHFILES =		${PKGSTEM}-fallback-byte-order-{pull/}513.patch:0
# merged "Fix build error caused by ntohs, ntohl"
# https://github.com/msgpack/msgpack-python/pull/514
PATCHFILES +=		${PKGSTEM}-fix-ntohs-{pull/}514.patch:0
PATCH_DIST_STRIP =	-p1

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} m

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		lang/python
MODPY_PYBUILD =		setuptools
MODPY_PI =		Yes

BUILD_DEPENDS =		lang/cython${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR =		python3

.include <bsd.port.mk>
