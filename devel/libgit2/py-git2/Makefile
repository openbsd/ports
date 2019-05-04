# $OpenBSD: Makefile,v 1.30 2019/05/04 11:07:59 jasper Exp $

COMMENT=		libgit2 bindings in Python

DISTNAME=		pygit2-${MODPY_EGG_VERSION}
PKGNAME=		${MODPY_PY_PREFIX}git2-${MODPY_EGG_VERSION}

MODULES=		lang/python
MODPY_EGG_VERSION=	0.28.1
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

WANTLIB += 		git2 pthread ${MODPY_WANTLIB}

LIB_DEPENDS=		devel/libgit2/libgit2>=0.28.0
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-cffi${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
