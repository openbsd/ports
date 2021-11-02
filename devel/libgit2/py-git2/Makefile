# $OpenBSD: Makefile,v 1.41 2021/11/02 00:00:24 sthen Exp $

COMMENT=		libgit2 bindings in Python

MODPY_EGG_VERSION=	1.6.1
DISTNAME=		pygit2-${MODPY_EGG_VERSION}
PKGNAME=		py-git2-${MODPY_EGG_VERSION}
REVISION=		0

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

WANTLIB += 		git2 pthread

DEBUG_PACKAGES =	${BUILD_PACKAGES}
LIB_DEPENDS=		devel/libgit2/libgit2
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-cffi${MODPY_FLAVOR} \
			devel/py-cached-property${MODPY_FLAVOR}

.include <bsd.port.mk>
