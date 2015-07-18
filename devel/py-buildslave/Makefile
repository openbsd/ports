# $OpenBSD: Makefile,v 1.17 2015/07/18 06:01:44 ajacoutot Exp $

COMMENT=	buildslave for the buildbot CI system

MODPY_EGG_VERSION=	0.8.12
DISTNAME=	buildbot-slave-${MODPY_EGG_VERSION}
PKGNAME=	py-buildslave-${MODPY_EGG_VERSION:S/p/pl/}
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	http://buildbot.net/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=	devel/py-twisted/core

TEST_DEPENDS=	${RUN_DEPENDS} \
			devel/py-mock

HOMEDIR =	/var/buildslave

SUBST_VARS +=	HOMEDIR

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-buildslave
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-buildslave
	${INSTALL_MAN} ${WRKSRC}/docs/buildslave.1 ${PREFIX}/man/man1

do-test:
	@${MAKE_ENV} PYTHONPATH=${WRKSRC} \
	    ${LOCALBASE}/bin/trial --temp-directory=${WRKBUILD}/regress \
	    buildslave.test

.include <bsd.port.mk>
