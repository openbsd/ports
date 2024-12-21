COMMENT =		radically simple IT automation

MODPY_DISTV =	2.18.1
DISTNAME =		ansible_core-${MODPY_DISTV}
PKGNAME =		ansible-core-${MODPY_DISTV}
REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		https://www.ansible.com/

MAINTAINER =		Pavel Korovin <pvk@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =              Yes
MODPY_PYBUILD =		setuptools

BUILD_DEPENDS =		devel/py-resolvelib \
			sysutils/py-packaging \
			textproc/py-yaml \
			www/py-jinja2

RUN_DEPENDS =		devel/py-resolvelib \
			security/py-cryptography \
			sysutils/py-packaging \
			textproc/py-yaml \
			www/py-jinja2

TEST_DEPENDS =		devel/py-mock \
			devel/py-nose \
			devel/py-test \
			devel/py-test-forked \
			devel/py-test-mock \
			devel/py-test-xdist \
			devel/py-tz \
			security/py-cryptodome \
			security/py-cryptography \
			security/py-passlib

#USE_GMAKE =		Yes

TEST_ENV =		HOME=${WRKSRC} ANSIBLE_REMOTE_TMP=${WRKSRC}

pre-install:
	sed -i -e "s,/usr/bin/python,${MODPY_BIN},g;" \
		${WRKSRC}/test/units/modules/test_async_wrapper.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ansible
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/ansible
	${INSTALL_DATA} ${WRKSRC}/changelogs/CHANGELOG-v*.rst \
		${PREFIX}/share/doc/ansible
	find ${PREFIX} -type f \( -name '.git*' -o -name '*.orig' \
		-o -name '.travis.yml' \) -delete

pre-test:
	-rm -rf ${WRKSRC}/bin
	-rm -rf ${WRKSRC}/test/units/ansible_test
	-rm -rf	${WRKSRC}/test/units/cli/galaxy
	-rm -rf	${WRKSRC}/test/units/galaxy
	-rm ${WRKSRC}/test/units/cli/test_galaxy.py
	-rm ${WRKSRC}/test/units/module_utils/basic/test_selinux.py
	-rm ${WRKSRC}/test/units/module_utils/urls/test_Request.py
	-rm ${WRKSRC}/test/units/utils/test_display.py
	@echo "[defaults]\nremote_tmp = ${WRKSRC}/.ansible/tmp" > \
		${WRKSRC}/test/lib/ansible_test/_data/ansible.cfg
	cd ${WRKSRC} && mkdir bin && cd bin && \
		ln -s ../test/lib/ansible_test/_util/target/cli/ansible_test_cli_stub.py \
		ansible-test

do-test:
	cd ${WRKSRC} && env ${TEST_ENV} ${MODPY_BIN} \
		bin/ansible-test units -v --python ${MODPY_VERSION}

.include <bsd.port.mk>
