# optional dependencies
# https://github.com/saltstack/salt/blob/develop/doc/conf.py
# libvirt-python
# py-GitPython
# py-croniter
# py-django
# py-libcloud (cloud-requirements.txt)
# py-mako
# py-mongo
# py-mysql
# py-pyinotify
# py-openssl
# py-redis
# rabbitmq

COMMENT =		remote execution and configuration management system

MODPY_DISTV =	3006.9
DISTNAME =		salt-${MODPY_DISTV}
REVISION =		1

CATEGORIES =		sysutils net devel

HOMEPAGE =		https://saltproject.io/

MAINTAINER =		Robert Nagy <robert@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

MODULES =		lang/python

BUILD_DEPENDS =		textproc/py-yaml \
			www/py-jinja2 \
			www/py-requests

# requirements/base.txt
RUN_DEPENDS =		devel/py-looseversion \
			devel/py-jmespath \
			net/py-msgpack>=0.6.2v0 \
			security/py-cryptography \
			textproc/py-MarkupSafe \
			textproc/py-yaml \
			www/py-jinja2 \
			www/py-requests \
 			sysutils/py-distro>=1.5.0 \
			sysutils/py-packaging

# requirements/zeromq.txt
RUN_DEPENDS +=		net/py-zmq \
			security/py-cryptodome

# salt/output/progress.py
RUN_DEPENDS +=		devel/py-progressbar

# salt/modules/x509.py
RUN_DEPENDS +=		security/py-M2Crypto

# salt/{beacons,modules}/ps.py
RUN_DEPENDS +=		sysutils/py-psutil

# max openfiles, soft: 3072, hard: 4096; DBus system session running...
TEST_IS_INTERACTIVE =	Yes
PORTHOME =		${WRKDIST}
TEST_DEPENDS =		databases/py-mysqlclient \
			devel/git \
			devel/py-gitpython \
			devel/py-pip \
			devel/py-six \
			devel/py-virtualenv \
			devel/subversion \
			net/py-libcloud \
			net/rabbitmq \
			sysutils/salt-testing \
			www/py-CherryPy

pre-configure:
	${SUBST_CMD} ${WRKSRC}/salt/returners/zabbix_return.py
	sed -i 's,share/man,man,g' ${WRKSRC}/setup.py
	sed -i 's,^#user: root,user: _salt,' ${WRKSRC}/conf/{master,proxy}
	sed -i '/^contextvars/d' ${WRKSRC}/requirements/base.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	cp -R ${WRKSRC}/conf ${PREFIX}/share/examples/salt

do-test:
	cd ${WRKSRC} && \
		${MODPY_BIN} tests/runtests.py -v

.include <bsd.port.mk>
