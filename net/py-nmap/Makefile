COMMENT =		python interface to the nmap scan data

MODPY_DISTV =	0.6.1
DISTNAME =		python-nmap-${MODPY_DISTV}
PKGNAME =		${DISTNAME:S/python/py/}
CATEGORIES =		net
REVISION =		8

HOMEPAGE =		http://xael.org/norman/python/python-nmap/
SITES =			http://xael.org/pages/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		net/nmap

NO_TEST =		Yes

EXAMPLESDIR =		${PREFIX}/share/examples/${MODPY_PY_PREFIX}nmap

post-install:
			${INSTALL_DATA_DIR} ${EXAMPLESDIR}
			${INSTALL_SCRIPT} ${WRKSRC}/example.py ${EXAMPLESDIR}

.include <bsd.port.mk>
