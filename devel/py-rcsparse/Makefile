# $OpenBSD: Makefile,v 1.23 2021/11/02 00:01:00 sthen Exp $

COMMENT=		RCS parsing library for Python

GH_ACCOUNT=		corecode
GH_PROJECT=		rcsparse
GH_COMMIT=		206bca0b90f5780815c0b6c6cbccfd03f27f6985

DISTNAME=		rcsparse-20151027
PKGNAME=		py-${DISTNAME}
REVISION=		2

CATEGORIES=		devel

# AGPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB +=		${MODPY_WANTLIB} pthread

DEBUG_PACKAGES=		${BUILD_PACKAGES}
# py3 flavour not fully tested yet
FLAVORS=		python3
FLAVOR?=

MODULES=		lang/python

do-test: fake
.if ${FLAVOR:Mpython3}
	2to3 -w ${WRKSRC}/testmodule.py
.endif
	cd ${WRKSRC}; \
	    ${SETENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
	    ${MODPY_BIN} testmodule.py

.include <bsd.port.mk>
