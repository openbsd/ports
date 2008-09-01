# $OpenBSD: Makefile,v 1.2 2008/09/01 19:09:17 eric Exp $

COMMENT=	small utility package for Divmod projects

VERSION=	0.5.10
DISTNAME=	Epsilon-${VERSION}
PKGNAME=	py-epsilon-${VERSION}
CATEGORIES=	devel

HOMEPAGE=	http://divmod.org/trac/wiki/DivmodEpsilon

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ekyo.nerim.net/distfiles/

MODULES=	lang/python

BUILD_DEPENDS=	:py-twisted-core-*:devel/py-twisted/core
RUN_DEPENDS=	${BUILD_DEPENDS}

REGRESS_DEPENDS=${RUN_DEPENDS} \
		:py-tz-*:devel/py-tz

MODPY_EGG_VERSION=${VERSION}
MODPY_DISTUTILS_BUILD=	build --build-base=${WRKSRC}/.build

TRIALDIR=	${WRKDIR}/trial
do-regress: install
	mkdir -m 0777 ${TRIALDIR} && cd ${TRIALDIR} && ${SUDO} su -m nobody -c \
		"${LOCALBASE}/bin/trial ${MODPY_SITEPKG}/epsilon/test"

.include <bsd.port.mk>
