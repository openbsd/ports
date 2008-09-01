# $OpenBSD: Makefile,v 1.2 2008/09/01 19:10:22 eric Exp $

COMMENT=	sqlite-based object persistence system for python

VERSION=	0.5.28
DISTNAME=	Axiom-${VERSION}
PKGNAME=	py-axiom-${VERSION}
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

BUILD_DEPENDS+=	:py-epsilon-*:devel/py-epsilon \
		:py-sqlite2-*:databases/py-sqlite2

RUN_DEPENDS=	${BUILD_DEPENDS} \
		:py-twisted-conch-*:devel/py-twisted/conch

REGRESS_DEPENDS=${BUILD_DEPENDS} \
	:python-bz2-${MODPY_VERSION}.*:lang/python/${MODPY_VERSION},-bz2

MODPY_DISTUTILS_BUILD=	build --build-base=${WRKSRC}/.build
MODPY_EGG_VERSION=	${VERSION}

TRIALDIR=	${WRKDIR}/trial
do-regress: install
	mkdir -m 0777 ${TRIALDIR} && cd ${TRIALDIR} && ${SUDO} su -m nobody -c \
		"${LOCALBASE}/bin/trial ${MODPY_SITEPKG}/axiom/test"

.include <bsd.port.mk>
