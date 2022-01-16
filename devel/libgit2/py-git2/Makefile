# $OpenBSD: Makefile,v 1.45 2022/01/16 19:38:14 kmos Exp $

COMMENT=		libgit2 bindings in Python

MODPY_EGG_VERSION=	1.7.2
DISTNAME=		pygit2-${MODPY_EGG_VERSION}
PKGNAME=		py-git2-${MODPY_EGG_VERSION}

MODULES=		lang/python
MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

WANTLIB += 		git2 pthread

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS=		devel/libgit2/libgit2

BUILD_DEPENDS=		devel/py-cffi${MODPY_FLAVOR}
RUN_DEPENDS=		devel/py-cffi${MODPY_FLAVOR}

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
