# $OpenBSD: Makefile,v 1.3 2018/06/25 06:32:39 landry Exp $

COMMENT =	web interface for buildbot

PART = www
REVISION=	0

BUILD_DEPENDS =	www/py-autobahn${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR} \
		devel/py-buildbot/pkg

RUN_DEPENDS +=	devel/py-buildbot/grid-view \
		devel/py-buildbot/console-view \
		devel/py-buildbot/waterfall-view

TEST_DEPENDS =	${BUILD_DEPENDS}

.include <bsd.port.mk>
