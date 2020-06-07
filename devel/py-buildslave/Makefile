# $OpenBSD: Makefile,v 1.48 2020/06/07 09:36:15 landry Exp $

COMMENT=	buildworker for the buildbot CI system

MODPY_EGG_VERSION=	2.8.1
DISTNAME=	buildbot-worker-${MODPY_EGG_VERSION}

CATEGORIES=	devel

HOMEPAGE=	http://buildbot.net/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

MODPY_SETUPTOOLS=	Yes

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}
RUN_DEPENDS=	devel/py-twisted${MODPY_FLAVOR}>=17.9.0 \
		devel/py-future${MODPY_FLAVOR}

TEST_DEPENDS=	devel/py-setuptools_trial${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR}

UPDATE_PLIST_ARGS +=	-i MODPY_PY_PREFIX

HOMEDIR =	/var/buildslave

SUBST_VARS +=	HOMEDIR

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/buildbot-worker
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/buildbot-worker
	${INSTALL_MAN} ${WRKSRC}/docs/buildbot-worker.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
