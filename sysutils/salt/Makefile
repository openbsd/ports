# $OpenBSD: Makefile,v 1.3 2013/08/22 18:14:46 kirby Exp $

COMMENT =	remote execution and configuration management system

MODPY_EGG_VERSION =	0.16.3
DISTNAME =	salt-${MODPY_EGG_VERSION}
REVISION =	1

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
		textproc/py-yaml

do-test:
	@${MODPY_TEST_TARGET}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/salt/
	${INSTALL_DATA} ${WRKSRC}/conf/master \
		${PREFIX}/share/examples/salt/master.sample
	${INSTALL_DATA} ${WRKSRC}/conf/minion \
		${PREFIX}/share/examples/salt/minion.sample

# devel/py-gitpython for fileserver backend ?

.include <bsd.port.mk>
