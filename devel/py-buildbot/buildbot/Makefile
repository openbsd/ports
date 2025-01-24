COMMENT =	continuous integration framework

DISTNAME =	buildbot-${MODPY_DISTV}
PKGNAME =	${DISTNAME}

RUN_DEPENDS =	databases/py-sqlalchemy>=1.4.0 \
		databases/py-alembic \
		devel/py-setuptools \
		devel/py-buildbot/www \
		devel/py-dateutil \
		devel/py-twisted \
		devel/py-txaio \
		net/py-msgpack \
		sysutils/py-croniter \
		sysutils/py-packaging \
		textproc/py-yaml \
		www/py-autobahn \
		www/py-jwt \
		www/py-jinja2 \
		www/py-treq

NO_TEST =	Yes
#TEST_DEPENDS =	${RUN_DEPENDS} \
#			devel/py-mock
# also needs treq, pyjade ?

UPDATE_PLIST_ARGS+=-i MODPY_PY_PREFIX

HOMEDIR =		/var/buildbot

SUBST_VARS +=		HOMEDIR

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/buildbot
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/buildbot
	${INSTALL_DATA} ${WRKSRC}/README.rst ${PREFIX}/share/doc/buildbot
	${INSTALL_DATA} ${WRKSRC}/docs/examples/*.cfg \
	    ${PREFIX}/share/examples/buildbot
	${INSTALL_MAN} ${WRKSRC}/docs/buildbot.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
