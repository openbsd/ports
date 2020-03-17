# $OpenBSD: Makefile,v 1.7 2020/03/17 13:45:31 landry Exp $

COMMENT =	web interface for buildbot

PART = www

BUILD_DEPENDS =	www/py-autobahn${MODPY_FLAVOR} \
		devel/py-buildbot/pkg

RUN_DEPENDS +=	devel/py-buildbot/grid-view \
		devel/py-buildbot/console-view \
		devel/py-buildbot/waterfall-view

TEST_DEPENDS =	${BUILD_DEPENDS}

.include <bsd.port.mk>
