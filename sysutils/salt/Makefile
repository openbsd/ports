# $OpenBSD: Makefile,v 1.70 2015/07/03 12:08:14 ajacoutot Exp $

# optional dependencies
# https://github.com/saltstack/salt/blob/develop/doc/conf.py#L42
# libvirt-python
# py-GitPython
# py-django
# py-libcloud (cloud-requirements.txt)
# py-mako
# py-mongo
# py-mysql
# py-openssl
# py-redis
# rabbitmq

COMMENT =		remote execution and configuration management system

MODPY_EGG_VERSION =	2015.5.2
DISTNAME =		salt-${MODPY_EGG_VERSION}
REVISION =		2

CATEGORIES =		sysutils net devel

HOMEPAGE =		http://saltstack.org/

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

BUILD_DEPENDS =		textproc/py-yaml \
			www/py-jinja2 \
			www/py-requests
			
# _requirements.txt
RUN_DEPENDS =		net/py-msgpack \
			textproc/py-MarkupSafe \
			textproc/py-yaml \
			www/py-jinja2 \
			www/py-requests

# salt/output/progress.py
RUN_DEPENDS +=		devel/py-progressbar

# zeromq-requirements.txt: ZeroMQ transport
RUN_DEPENDS +=		net/py-zmq \
			security/py-M2Crypto \
			security/py-crypto

# for tests
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
			sysutils/salt-testing

pre-configure:
	perl -pi -e 's,share/man,man,g' ${WRKSRC}/setup.py
	perl -pi -e 's,^#user: root,user: _salt,,' ${WRKSRC}/conf/master
	perl -pi -e 's,^REQUIRED_OPEN_FILES.*,REQUIRED_OPEN_FILES = 512,,' \
		${WRKSRC}/tests/runtests.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	cp -R ${WRKSRC}/conf ${PREFIX}/share/examples/salt

# FAILED (total=817, skipped=99, passed=684, failures=26, errors=8)
# https://github.com/saltstack/salt/issues/15864
do-test:
	cd ${WRKSRC} && \
		${MODPY_BIN} tests/runtests.py -v

.include <bsd.port.mk>
