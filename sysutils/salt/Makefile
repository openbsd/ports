# $OpenBSD: Makefile,v 1.37 2014/09/03 09:11:19 ajacoutot Exp $

# optional dependencies
# https://github.com/saltstack/salt/blob/develop/doc/conf.py#L42
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

MODPY_EGG_VERSION =	2014.1.10
DISTNAME =		salt-${MODPY_EGG_VERSION}
REVISION =		14

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
TEST_DEPENDS =		databases/py-mysql \
			devel/git \
			devel/py-pip \
			devel/py-virtualenv \
			devel/subversion \
			net/py-libcloud \
			net/rabbitmq \
			sysutils/salt-testing

pre-configure:
	perl -pi -e 's,share/man,man,g' ${WRKSRC}/setup.py
# https://github.com/saltstack/salt/commit/ea2be8bc7813ba2e2ddd05913783887513516c8c
# https://github.com/saltstack/salt/commit/81857ea0743f2fd475789044a11310eec7a6d4fc
	cp ${FILESDIR}/openbsdrcctl.py ${WRKSRC}/salt/modules/
# https://github.com/saltstack/salt/commit/edcea17892bc8f6c4eec8441db366878ee2cd2bd
	cp ${FILESDIR}/openbsd_sysctl.py ${WRKSRC}/salt/modules/

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/salt/
	${INSTALL_DATA} ${WRKSRC}/conf/!(*.orig) \
		${PREFIX}/share/examples/salt/

# FAILED (total=817, skipped=99, passed=684, failures=26, errors=8)
do-test:
	ln -sf ${LOCALBASE}/bin/pip-${MODPY_VERSION} ${WRKDIR}/bin/pip
	@${MODPY_TEST_TARGET}

.include <bsd.port.mk>
