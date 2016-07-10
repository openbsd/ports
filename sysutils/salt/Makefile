# $OpenBSD: Makefile,v 1.94 2016/07/10 08:50:35 ajacoutot Exp $

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

MODPY_EGG_VERSION =	2016.3.1
DISTNAME =		salt-${MODPY_EGG_VERSION}
REVISION =		1

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
			
# requirements/base.txt
RUN_DEPENDS =		devel/py-futures \
			net/py-msgpack \
			textproc/py-MarkupSafe \
			textproc/py-yaml \
			www/py-jinja2 \
			www/py-requests \
			www/py-tornado

# requirements/zeromq.txt
RUN_DEPENDS +=		net/py-zmq \
			security/py-crypto

# requirements/raet.txt (see pkg/DESCR)
#RUN_DEPENDS +=		devel/py-ioflo \
#			net/py-raet
#			security/py-libnacl


# salt/output/progress.py
RUN_DEPENDS +=		devel/py-progressbar

# salt/modules/x509.py
RUN_DEPENDS +=		security/py-M2Crypto

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
	sed -i 's,share/man,man,g' ${WRKSRC}/setup.py
	sed -i 's,^#user: root,user: _salt,' ${WRKSRC}/conf/{master,proxy}
	sed -i 's,^REQUIRED_OPEN_FILES.*,REQUIRED_OPEN_FILES = 512,' \
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
