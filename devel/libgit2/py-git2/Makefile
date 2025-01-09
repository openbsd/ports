COMMENT=		libgit2 bindings in Python

MODPY_DISTV=		1.17.0
DISTNAME=		pygit2-${MODPY_DISTV}
PKGNAME=		py-git2-${MODPY_DISTV}

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

WANTLIB += 		git2

DEBUG_PACKAGES=		${BUILD_PACKAGES}

LIB_DEPENDS=		devel/libgit2/libgit2

BUILD_DEPENDS=		devel/py-cffi
RUN_DEPENDS=		devel/py-cffi

.include <bsd.port.mk>
