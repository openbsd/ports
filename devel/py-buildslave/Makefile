# $OpenBSD: Makefile,v 1.13 2013/09/16 10:02:29 landry Exp $

COMMENT=	buildslave for the buildbot CI system

MODPY_EGG_VERSION=	0.8.8
DISTNAME=	buildbot-slave-${MODPY_EGG_VERSION}
PKGNAME=	py-buildslave-${MODPY_EGG_VERSION:S/p/pl/}

CATEGORIES=	devel

HOMEPAGE=	http://buildbot.net/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES =	https://buildbot.googlecode.com/files/

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
