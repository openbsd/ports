# $OpenBSD: Makefile,v 1.9 2010/11/15 00:22:53 espie Exp $

COMMENT=	sqlite-based object persistence system for python

VERSION=	0.6.0
DISTNAME=	Axiom-${VERSION}
PKGNAME=	py-axiom-${VERSION}
REVISION =	0
CATEGORIES=	databases

HOMEPAGE=	http://divmod.org/trac/wiki/DivmodAxiom

MAINTAINER=	Eric Faurot <eric@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ekyo.nerim.net/distfiles/

MODULES=	lang/python

COMMON_DEPENDS=	devel/py-epsilon \
		databases/py-sqlite2
BUILD_DEPENDS=	${COMMON_DEPENDS}

RUN_DEPENDS=	${COMMON_DEPENDS} \
		devel/py-twisted/conch

REGRESS_DEPENDS=${COMMON_DEPENDS}

MODPY_DISTUTILS_BUILD=	build --build-base=${WRKSRC}/.build
MODPY_EGG_VERSION=	${VERSION}

TRIALDIR=	${WRKDIR}/trial
do-regress: install
	mkdir -m 0777 ${TRIALDIR} && cd ${TRIALDIR} && ${SUDO} su -m nobody -c \
		"${LOCALBASE}/bin/trial ${MODPY_SITEPKG}/axiom/test"

.include <bsd.port.mk>
