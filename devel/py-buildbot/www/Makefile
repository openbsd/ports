# $OpenBSD: Makefile,v 1.8 2020/07/03 21:12:41 sthen Exp $

COMMENT =	web interface for buildbot
REVISION =	0

PART = www

BUILD_DEPENDS =	www/py-autobahn${MODPY_FLAVOR} \
		devel/py-buildbot/pkg

RUN_DEPENDS +=	devel/py-buildbot/grid-view \
		devel/py-buildbot/console-view \
		devel/py-buildbot/waterfall-view

TEST_DEPENDS =	${BUILD_DEPENDS}

.include <bsd.port.mk>
