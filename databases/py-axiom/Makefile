# $OpenBSD: Makefile,v 1.7 2010/07/03 02:44:13 naddy Exp $

COMMENT=	sqlite-based object persistence system for python

VERSION=	0.6.0
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

COMMON_DEPENDS=	:py-epsilon-*:devel/py-epsilon \
		:py-sqlite2-*:databases/py-sqlite2
BUILD_DEPENDS=	${COMMON_DEPENDS}

RUN_DEPENDS=	${COMMON_DEPENDS} \
		:py-twisted-conch-*:devel/py-twisted/conch

REGRESS_DEPENDS=${COMMON_DEPENDS}

MODPY_DISTUTILS_BUILD=	build --build-base=${WRKSRC}/.build
MODPY_EGG_VERSION=	${VERSION}

TRIALDIR=	${WRKDIR}/trial
do-regress: install
	mkdir -m 0777 ${TRIALDIR} && cd ${TRIALDIR} && ${SUDO} su -m nobody -c \
		"${LOCALBASE}/bin/trial ${MODPY_SITEPKG}/axiom/test"

.include <bsd.port.mk>
