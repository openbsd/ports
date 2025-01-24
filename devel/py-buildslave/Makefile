COMMENT=	buildworker for the buildbot CI system

MODPY_DISTV=	4.2.1
DISTNAME=	buildbot_worker-${MODPY_DISTV}
PKGNAME=	${DISTNAME:S/_/-/}

CATEGORIES=	devel

HOMEPAGE=	http://buildbot.net/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

SITES =		https://github.com/buildbot/buildbot/releases/download/v${MODPY_DISTV}/

MODULES=	lang/python

MODPY_PYBUILD =	setuptools

RUN_DEPENDS=	devel/py-twisted>=17.9.0 \
		devel/py-txaio \
		www/py-autobahn \
		net/py-msgpack

TEST_DEPENDS=	devel/py-setuptools_trial \
		devel/py-mock

UPDATE_PLIST_ARGS +=	-i MODPY_PY_PREFIX

HOMEDIR =	/var/buildslave

SUBST_VARS +=	HOMEDIR

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/buildbot-worker
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/buildbot-worker
	${INSTALL_MAN} ${WRKSRC}/docs/buildbot-worker.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
