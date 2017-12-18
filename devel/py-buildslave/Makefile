# $OpenBSD: Makefile,v 1.21 2017/12/18 20:42:31 landry Exp $

COMMENT=	buildworker for the buildbot CI system

MODPY_EGG_VERSION=	0.9.14
DISTNAME=	buildbot-worker-${MODPY_EGG_VERSION}
PKGNAME=	py-buildslave-${MODPY_EGG_VERSION:S/p/pl/}

CATEGORIES=	devel

HOMEPAGE=	http://buildbot.net/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=	devel/py-twisted

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
