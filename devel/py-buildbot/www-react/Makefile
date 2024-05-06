COMMENT =	react web interface for buildbot
REVISION =	0

PART = www-react

BUILD_DEPENDS =	www/py-autobahn${MODPY_FLAVOR} \
		devel/py-buildbot/pkg

RUN_DEPENDS +=	devel/py-buildbot/react-grid-view \
		devel/py-buildbot/react-console-view \
		devel/py-buildbot/react-waterfall-view

TEST_DEPENDS =	${BUILD_DEPENDS}

.include <bsd.port.mk>
