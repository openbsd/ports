# $OpenBSD: Makefile,v 1.1.1.1 2017/12/18 20:35:45 landry Exp $

COMMENT =	continuous integration framework

DISTNAME =	buildbot-${MODPY_EGG_VERSION}

RUN_DEPENDS =	databases/py-sqlalchemy \
		databases/py-sqlalchemy-migrate>=0.7.2 \
		devel/py-buildbot/www \
		devel/py-dateutil \
		devel/py-twisted \
		devel/py-future \
		devel/py-txaio \
		www/py-autobahn \
		www/py-jwt \
		www/py-jinja2

NO_TEST =	Yes
#TEST_DEPENDS =	${RUN_DEPENDS} \
#			devel/py-mock \
#			devel/py-pathlib2
# also needs treq, pyjade ?

HOMEDIR =		/var/buildbot

SUBST_VARS +=		HOMEDIR

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-buildbot
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-buildbot
	${INSTALL_DATA} ${WRKSRC}/README.rst ${PREFIX}/share/doc/py-buildbot
	${INSTALL_DATA} ${WRKSRC}/docs/examples/*.cfg \
	    ${PREFIX}/share/examples/py-buildbot
	${INSTALL_MAN} ${WRKSRC}/docs/buildbot.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
