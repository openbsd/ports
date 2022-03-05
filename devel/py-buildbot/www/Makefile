# $OpenBSD: Makefile,v 1.11 2022/03/05 09:15:52 landry Exp $

COMMENT =	web interface for buildbot

PART = www

BUILD_DEPENDS =	www/py-autobahn${MODPY_FLAVOR} \
		devel/py-buildbot/pkg

RUN_DEPENDS +=	devel/py-buildbot/grid-view \
		devel/py-buildbot/console-view \
		devel/py-buildbot/waterfall-view

TEST_DEPENDS =	${BUILD_DEPENDS}

.include <bsd.port.mk>
