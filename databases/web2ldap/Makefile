# $OpenBSD: Makefile,v 1.2 2020/07/03 21:12:37 sthen Exp $

COMMENT =	full-featured LDAP client running as web application

MODPY_EGG_VERSION =	1.5.81
DISTNAME =	web2ldap-${MODPY_EGG_VERSION}
REVISION =	0

CATEGORIES =	databases www sysutils

HOMEPAGE =	https://web2ldap.de/web2ldap.html

MAINTAINER =	Lucas Raab <tuftedocelot@fastmail.fm>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://www.web2ldap.de/download/

MODULES =	lang/python

FIX_EXTRACT_PERMISSIONS =	Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =	Yes

MODPY_VERSION =	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS =	databases/py-ldap0${MODPY_FLAVOR} \
		textproc/py-xlwt${MODPY_FLAVOR} \
		net/py-dnspython${MODPY_FLAVOR} \
		security/py-asn1crypto${MODPY_FLAVOR} \
		security/py-paramiko${MODPY_FLAVOR}
RUN_DEPENDS =	${BUILD_DEPENDS} \
		graphics/py-Pillow${MODPY_FLAVOR} \
		textproc/py-defusedxml${MODPY_FLAVOR}

CONFDIR =	${PREFIX}/share/examples/web2ldap

post-install:
	cp -r ${WRKSRC}/htdocs ${PREFIX}/share/doc/web2ldap
	mv ${PREFIX}/etc/web2ldap ${PREFIX}/share/examples/web2ldap
	rmdir ${PREFIX}/etc

.include <bsd.port.mk>
