# $OpenBSD: Makefile,v 1.5 2019/04/28 20:51:31 sthen Exp $

COMMENT =	web interface for buildbot
REVISION =	0

PART = www

BUILD_DEPENDS =	www/py-autobahn${MODPY_FLAVOR} \
		devel/py-mock${MODPY_FLAVOR} \
		devel/py-buildbot/pkg

RUN_DEPENDS +=	devel/py-buildbot/grid-view \
		devel/py-buildbot/console-view \
		devel/py-buildbot/waterfall-view

TEST_DEPENDS =	${BUILD_DEPENDS}

.include <bsd.port.mk>
