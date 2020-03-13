# $OpenBSD: Makefile,v 1.136 2020/03/13 12:31:46 bket Exp $

# optional dependencies
# https://github.com/saltstack/salt/blob/develop/doc/conf.py#L54
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

MODPY_EGG_VERSION =	2018.3.3
DISTNAME =		salt-${MODPY_EGG_VERSION}
REVISION =		1

CATEGORIES =		sysutils net devel

HOMEPAGE =		http://saltstack.org/

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

BUILD_DEPENDS =		textproc/py-yaml \
			www/py-jinja2 \
			www/py-requests
			
# requirements/base.txt
RUN_DEPENDS =		devel/py-futures \
			net/py-msgpack>=0.6.2v0 \
			textproc/py-MarkupSafe \
			textproc/py-yaml \
			www/py-jinja2 \
			www/py-requests \
			www/py-tornado

# requirements/zeromq.txt
RUN_DEPENDS +=		net/py-zmq \
			security/py-cryptodome

# salt/output/progress.py
RUN_DEPENDS +=		devel/py-progressbar

# salt/modules/x509.py
RUN_DEPENDS +=		security/py-M2Crypto

# max openfiles, soft: 3072, hard: 4096; DBus system session running...
TEST_IS_INTERACTIVE =	Yes
PORTHOME =		${WRKDIST}
TEST_DEPENDS =		databases/py-mysql \
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

# https://github.com/saltstack/salt/pull/45164
post-extract:
	cp ${FILESDIR}/{pf,vmctl}.py ${WRKSRC}/salt/modules/

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
