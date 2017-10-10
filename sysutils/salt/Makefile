# $OpenBSD: Makefile,v 1.107 2017/10/10 05:19:43 ajacoutot Exp $

# optional dependencies
# https://github.com/saltstack/salt/blob/develop/doc/conf.py#L54
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

MODPY_EGG_VERSION =	2017.7.2
DISTNAME =		salt-${MODPY_EGG_VERSION}

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

pre-configure:
	sed -i 's,share/man,man,g' ${WRKSRC}/setup.py
	sed -i 's,^#user: root,user: _salt,' ${WRKSRC}/conf/{master,proxy}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	cp -R ${WRKSRC}/conf ${PREFIX}/share/examples/salt

do-test:
	cd ${WRKSRC} && \
		${MODPY_BIN} tests/runtests.py -v

.include <bsd.port.mk>
