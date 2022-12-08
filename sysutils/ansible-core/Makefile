COMMENT =		radically simple IT automation

MODPY_EGG_VERSION =	2.14.1
DISTNAME =		ansible-core-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

HOMEPAGE =		https://www.ansible.com/

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =              Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		devel/py-resolvelib${MODPY_FLAVOR} \
			devel/py-straight.plugin${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-docutils${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR}

RUN_DEPENDS =		devel/py-resolvelib${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			sysutils/py-packaging${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR}

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR} \
			devel/py-test${MODPY_FLAVOR} \
			devel/py-test-forked${MODPY_FLAVOR} \
			devel/py-test-mock${MODPY_FLAVOR} \
			devel/py-test-xdist${MODPY_FLAVOR} \
			devel/py-tz${MODPY_FLAVOR} \
			security/py-cryptodome${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR} \
			security/py-passlib${MODPY_FLAVOR}

USE_GMAKE =		Yes

TEST_ENV =		HOME=${WRKSRC} ANSIBLE_REMOTE_TMP=${WRKSRC}

pre-install:
	cd ${WRKSRC} && env PYTHONPATH=lib HOME=./ ${MODPY_BIN} \
		bin/ansible-config init --disabled -t all > examples/ansible.cfg
	cd ${WRKSRC} && ${SETENV} HOME=${WRKSRC} PYTHON=${MODPY_BIN} \
		${MAKE_PROGRAM} docs
	sed -i -e "s,/usr/,${TRUEPREFIX}/,g;" \
		${WRKSRC}/examples/ansible.cfg \
		${WRKSRC}/docs/man/man1/*.1
	sed -i -e "s,/usr/bin/python,${MODPY_BIN},g;" \
		${WRKSRC}/test/units/modules/test_async_wrapper.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/ansible
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/ansible
	${INSTALL_DATA} ${WRKSRC}/changelogs/CHANGELOG-v*.rst \
		${PREFIX}/share/doc/ansible
	${INSTALL_MAN} ${WRKSRC}/docs/man/man1/*.1 ${PREFIX}/man/man1
	${INSTALL_DATA} ${WRKSRC}/examples/{ansible.cfg,hosts} \
		${PREFIX}/share/examples/ansible
	find ${PREFIX} -type f \( -name '.git*' -o -name '*.orig' \
		-o -name '.travis.yml' \) -delete

pre-test:
	-rm -rf ${WRKSRC}/test/units/ansible_test
	-rm -rf	${WRKSRC}/test/units/cli/galaxy
	-rm -rf	${WRKSRC}/test/units/galaxy
	-rm ${WRKSRC}/test/units/cli/test_galaxy.py
	-rm ${WRKSRC}/test/units/module_utils/basic/test_selinux.py
	-rm ${WRKSRC}/test/units/module_utils/urls/test_Request.py
	-rm ${WRKSRC}/test/units/utils/test_display.py
	@echo "[defaults]\nremote_tmp = ${WRKSRC}/.ansible/tmp" > \
		${WRKSRC}/test/lib/ansible_test/_data/ansible.cfg

do-test:
	cd ${WRKSRC} && env ${TEST_ENV} ${MODPY_BIN} \
		bin/ansible-test units -v --python ${MODPY_VERSION}

.include <bsd.port.mk>
