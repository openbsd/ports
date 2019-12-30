# $OpenBSD: Makefile,v 1.32 2019/12/30 14:58:12 jasper Exp $

COMMENT=		libgit2 bindings in Python

DISTNAME=		pygit2-${MODPY_EGG_VERSION}
PKGNAME=		${MODPY_PY_PREFIX}git2-${MODPY_EGG_VERSION}

MODULES=		lang/python
MODPY_EGG_VERSION=	1.0.1
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

WANTLIB += 		git2 pthread ${MODPY_WANTLIB}

DEBUG_PACKAGES =	${BUILD_PACKAGES}
LIB_DEPENDS=		devel/libgit2/libgit2>=0.28.0
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-cffi${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
