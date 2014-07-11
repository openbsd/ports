# $OpenBSD: Makefile,v 1.16 2014/07/11 08:55:57 ajacoutot Exp $

# optional dependencies
# https://github.com/saltstack/salt/blob/develop/doc/conf.py#L37
# libvirt-python
# py-GitPython
# py-django
# py-libcloud
# py-mako
# py-mongo
# py-mysql
# py-openssl
# py-redis
# py-requests
# rabbitmq

COMMENT =		remote execution and configuration management system

MODPY_EGG_VERSION =	2014.1.7
DISTNAME =		salt-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils net devel

HOMEPAGE =		http://saltstack.org/

MAINTAINER =		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_PYPI:=s/salt/}

MODULES =		lang/python

RUN_DEPENDS =		net/py-msgpack \
			net/py-zmq \
			security/py-M2Crypto \
			security/py-crypto \
			textproc/py-yaml \
			www/py-jinja2

# for tests
PORTHOME =		${WRKDIST}
TEST_DEPENDS =		devel/py-pip \
			sysutils/salt-testing

pre-configure:
	perl -pi -e 's,share/man,man,g' ${WRKSRC}/setup.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/salt/
	${INSTALL_DATA} ${WRKSRC}/conf/!(*.orig) \
		${PREFIX}/share/examples/salt/

# FAILED (total=815, skipped=186, passed=590, failures=31, errors=8)
do-test:
	ln -sf ${LOCALBASE}/bin/pip-${MODPY_VERSION} ${WRKDIR}/bin/pip
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
