# $OpenBSD: Makefile,v 1.26 2018/04/01 18:55:30 landry Exp $

COMMENT=	buildworker for the buildbot CI system

MODPY_EGG_VERSION=	1.1.0
DISTNAME=	buildbot-worker-${MODPY_EGG_VERSION}
PKGNAME=	py-buildslave-${MODPY_EGG_VERSION:S/post/pl/}

CATEGORIES=	devel

HOMEPAGE=	http://buildbot.net/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=	devel/py-twisted \
		devel/py-future

NO_TEST =	Yes
#TEST_DEPENDS=	${RUN_DEPENDS} \
#		devel/py-setuptools_trial \
#		devel/py-scandir \
#		devel/py-mock

HOMEDIR =	/var/buildslave

SUBST_VARS +=	HOMEDIR

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-buildslave
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-buildslave
	${INSTALL_MAN} ${WRKSRC}/docs/buildbot-worker.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
