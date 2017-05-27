# $OpenBSD: Makefile,v 1.22 2017/05/27 14:02:36 jasper Exp $

COMMENT=		libgit2 bindings in Python

DISTNAME=		pygit2-${MODPY_EGG_VERSION}
PKGNAME=		${MODPY_PY_PREFIX}git2-${MODPY_EGG_VERSION}

MODULES=		lang/python
MODPY_EGG_VERSION=	0.25.1
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

WANTLIB += 		git2 pthread ${MODPY_WANTLIB}

LIB_DEPENDS=		devel/libgit2/libgit2>=0.25.0
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-cffi${MODPY_FLAVOR}>=1.2.1 \
			devel/py-six${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

.if ${FLAVOR:Mpython3}
PY3_SUFFIX =		.abi3
.else
PY3_SUFFIX =		# empty
.endif

SUBST_VARS ==		PY3_SUFFIX

.include <bsd.port.mk>
