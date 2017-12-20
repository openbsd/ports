# $OpenBSD: Makefile,v 1.2 2017/12/20 14:44:18 landry Exp $

COMMENT =	web interface for buildbot

PART = www

BUILD_DEPENDS =	www/py-autobahn \
		devel/py-mock \
		devel/py-buildbot/pkg

RUN_DEPENDS +=	devel/py-buildbot/grid-view \
		devel/py-buildbot/console-view \
		devel/py-buildbot/waterfall-view

TEST_DEPENDS =	${BUILD_DEPENDS}

.include <bsd.port.mk>
