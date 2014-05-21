# $OpenBSD: Makefile,v 1.6 2014/05/21 07:39:47 ajacoutot Exp $

COMMENT =	remote execution and configuration management system

MODPY_EGG_VERSION =	0.17.5
DISTNAME =	salt-${MODPY_EGG_VERSION}

CATEGORIES =	sysutils net devel

HOMEPAGE =	http://saltstack.org/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_PYPI:=s/salt/}

MODULES =	lang/python
RUN_DEPENDS =	net/py-zmq \
		net/py-msgpack \
		www/py-jinja2 \
		security/py-M2Crypto \
		security/py-crypto \
		textproc/py-MarkupSafe \
		textproc/py-yaml

TEST_DEPENDS =	devel/py-pip \
		sysutils/salt-testing

# FAILED (total=568, skipped=77, passed=464, failures=18, errors=9)
do-test:
	ln -sf ${LOCALBASE}/bin/pip-${MODPY_VERSION} ${WRKDIR}/bin/pip
	@${MODPY_TEST_TARGET}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/salt/
	${INSTALL_DATA} ${WRKSRC}/conf/master \
		${PREFIX}/share/examples/salt/master.sample
	${INSTALL_DATA} ${WRKSRC}/conf/minion \
		${PREFIX}/share/examples/salt/minion.sample

# devel/py-gitpython for fileserver backend ?

.include <bsd.port.mk>
