# $OpenBSD: Makefile,v 1.121 2018/02/02 08:05:58 ajacoutot Exp $

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

MODPY_EGG_VERSION =	2017.7.3
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
	cp ${FILESDIR}/vmctl.py ${WRKSRC}/salt/modules/

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
