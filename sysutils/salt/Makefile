# $OpenBSD: Makefile,v 1.145 2020/07/03 21:13:12 sthen Exp $

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

MODPY_EGG_VERSION =	3001
DISTNAME =		salt-${MODPY_EGG_VERSION}
REVISION =		0

CATEGORIES =		sysutils net devel

HOMEPAGE =		https://community.saltstack.com/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_SETUPTOOLS =	Yes

MODULES =		lang/python

BUILD_DEPENDS =		textproc/py-yaml${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR}

# requirements/base.txt
RUN_DEPENDS =		net/py-msgpack${MODPY_FLAVOR}>=0.6.2v0 \
			textproc/py-MarkupSafe${MODPY_FLAVOR} \
			textproc/py-yaml${MODPY_FLAVOR} \
			www/py-jinja2${MODPY_FLAVOR} \
			www/py-requests${MODPY_FLAVOR} \
 			sysutils/py-distro${MODPY_FLAVOR}

# requirements/zeromq.txt
RUN_DEPENDS +=		net/py-zmq${MODPY_FLAVOR} \
			security/py-cryptodome${MODPY_FLAVOR}

# salt/output/progress.py
RUN_DEPENDS +=		devel/py-progressbar${MODPY_FLAVOR}

# salt/modules/x509.py
RUN_DEPENDS +=		security/py-M2Crypto${MODPY_FLAVOR}

# max openfiles, soft: 3072, hard: 4096; DBus system session running...
TEST_IS_INTERACTIVE =	Yes
PORTHOME =		${WRKDIST}
TEST_DEPENDS =		databases/py-mysqlclient${MODPY_FLAVOR} \
			devel/git \
			devel/py-gitpython${MODPY_FLAVOR} \
			devel/py-pip${MODPY_FLAVOR} \
			devel/py-six${MODPY_FLAVOR} \
			devel/py-virtualenv${MODPY_FLAVOR} \
			devel/subversion \
			net/py-libcloud${MODPY_FLAVOR} \
			net/rabbitmq \
			sysutils/salt-testing \
			www/py-CherryPy${MODPY_FLAVOR}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/salt/returners/zabbix_return.py
	sed -i 's,share/man,man,g' ${WRKSRC}/setup.py
	sed -i 's,^#user: root,user: _salt,' ${WRKSRC}/conf/{master,proxy}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	cp -R ${WRKSRC}/conf ${PREFIX}/share/examples/salt

do-test:
	cd ${WRKSRC} && \
		${MODPY_BIN} tests/runtests.py -v

.include <bsd.port.mk>
