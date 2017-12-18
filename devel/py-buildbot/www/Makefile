# $OpenBSD: Makefile,v 1.1.1.1 2017/12/18 20:35:46 landry Exp $

COMMENT =	web interface for buildbot

PART = www

BUILD_DEPENDS =	www/py-autobahn \
		devel/py-buildbot/pkg

RUN_DEPENDS +=	devel/py-buildbot/grid-view \
		devel/py-buildbot/console-view \
		devel/py-buildbot/waterfall-view

TEST_DEPENDS =	${BUILD_DEPENDS}

.include <bsd.port.mk>
