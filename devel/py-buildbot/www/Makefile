# $OpenBSD: Makefile,v 1.9 2020/12/09 07:39:16 landry Exp $

COMMENT =	web interface for buildbot

PART = www

BUILD_DEPENDS =	www/py-autobahn${MODPY_FLAVOR} \
		devel/py-buildbot/pkg

RUN_DEPENDS +=	devel/py-buildbot/grid-view \
		devel/py-buildbot/console-view \
		devel/py-buildbot/waterfall-view

TEST_DEPENDS =	${BUILD_DEPENDS}

.include <bsd.port.mk>
