# $OpenBSD: Makefile,v 1.13 2014/07/08 15:34:01 jasper Exp $

COMMENT=		libgit2 bindings in Python

GH_VER=			v0.21.0
V=			${GH_VER:S/v//}
PROJECT=		pygit2
PKGNAME=		py-git2-$V

MASTER_SITES=		https://github.com/libgit2/${PROJECT}/archive/
DISTFILES=		${DISTNAME}${EXTRACT_SUFX}{${GH_VER}${EXTRACT_SUFX}}

MODULES=		lang/python

WANTLIB += 		git2 pthread ${MODPY_WANTLIB}

LIB_DEPENDS=		devel/libgit2/libgit2>=0.21.0
BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/py-cffi

pre-configure:
	${SUBST_CMD} ${WRKSRC}/pygit2/ffi.py

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} setup.py test

.include <bsd.port.mk>
