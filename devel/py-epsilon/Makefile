# $OpenBSD: Makefile,v 1.8 2010/08/30 22:24:15 jasper Exp $

COMMENT=	small utility package for Divmod projects

VERSION=	0.6.0
DISTNAME=	Epsilon-${VERSION}
PKGNAME=	py-epsilon-${VERSION}
REVISION =	0
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

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:py-twisted-core-*:devel/py-twisted/core

REGRESS_DEPENDS=${RUN_DEPENDS} \
		:py-tz-*:devel/py-tz

MODPY_EGG_VERSION=${VERSION}
MODPY_DISTUTILS_BUILD=	build --build-base=${WRKSRC}/.build

TRIALDIR=	${WRKDIR}/trial
do-regress: install
	mkdir -m 0777 ${TRIALDIR} && cd ${TRIALDIR} && ${SUDO} su -m nobody -c \
		"${LOCALBASE}/bin/trial ${MODPY_SITEPKG}/epsilon/test"

.include <bsd.port.mk>
