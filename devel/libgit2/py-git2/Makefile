# $OpenBSD: Makefile,v 1.29 2019/04/28 20:51:29 sthen Exp $

COMMENT=		libgit2 bindings in Python

DISTNAME=		pygit2-${MODPY_EGG_VERSION}
PKGNAME=		${MODPY_PY_PREFIX}git2-${MODPY_EGG_VERSION}

MODULES=		lang/python
MODPY_EGG_VERSION=	0.27.4
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
REVISION=		0

WANTLIB += 		git2 pthread ${MODPY_WANTLIB}

LIB_DEPENDS=		devel/libgit2/libgit2>=0.27.0
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-cffi${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
