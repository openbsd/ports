# $OpenBSD: Makefile,v 1.18 2015/10/14 18:13:13 jasper Exp $

COMMENT=		libgit2 bindings in Python

MODPY_EGG_VERSION=	0.23.2
GH_VER=			v${MODPY_EGG_VERSION}
V=			${GH_VER:S/v//}
PROJECT=		pygit2
PKGNAME=		py-git2-$V

MASTER_SITES=		https://github.com/libgit2/${PROJECT}/archive/
DISTFILES=		${DISTNAME}${EXTRACT_SUFX}{${GH_VER}${EXTRACT_SUFX}}

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

WANTLIB += 		git2 pthread ${MODPY_WANTLIB}

LIB_DEPENDS=		devel/libgit2/libgit2>=0.23.0
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-cffi>=1.2.1

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} setup.py test

.include <bsd.port.mk>
