# $OpenBSD: Makefile,v 1.36 2020/11/07 14:52:30 jasper Exp $

COMMENT=		libgit2 bindings in Python

MODPY_EGG_VERSION=	1.4.0
DISTNAME=		pygit2-${MODPY_EGG_VERSION}
PKGNAME=		${MODPY_PY_PREFIX}git2-${MODPY_EGG_VERSION}

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_VERSION=		${MODPY_DEFAULT_VERSION_3}

WANTLIB += 		git2 pthread

DEBUG_PACKAGES =	${BUILD_PACKAGES}
LIB_DEPENDS=		devel/libgit2/libgit2>=1.1.0
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-cffi${MODPY_FLAVOR} \
			devel/py-cached-property${MODPY_FLAVOR}

.include <bsd.port.mk>
