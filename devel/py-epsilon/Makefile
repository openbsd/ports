# $OpenBSD: Makefile,v 1.13 2016/04/27 21:06:11 eric Exp $

COMMENT=	small utility package for Divmod projects

VERSION=	0.6.0
DISTNAME=	Epsilon-${VERSION}
PKGNAME=	py-epsilon-${VERSION}
REVISION =	3
CATEGORIES=	devel

HOMEPAGE=	http://divmod.org/trac/wiki/DivmodEpsilon

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://ekyo.nerim.net/distfiles/

MODULES=	lang/python

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/py-twisted/core

TEST_DEPENDS=${RUN_DEPENDS} \
		devel/py-tz

MODPY_EGG_VERSION=${VERSION}
MODPY_DISTUTILS_BUILD=	build --build-base=${WRKSRC}/.build

TRIALDIR=	${WRKDIR}/trial
do-test: install
	mkdir -m 0777 ${TRIALDIR} && cd ${TRIALDIR} && ${SUDO} su -m nobody -c \
		"${LOCALBASE}/bin/trial ${MODPY_SITEPKG}/epsilon/test"

.include <bsd.port.mk>
