# $OpenBSD: Makefile,v 1.16 2019/07/12 20:48:46 sthen Exp $

COMMENT =		python interface to the nmap scan data

MODPY_EGG_VERSION =	0.6.1
DISTNAME =		python-nmap-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/python/py/}
CATEGORIES =		net
REVISION =		1

HOMEPAGE =		http://xael.org/norman/python/python-nmap/
MASTER_SITES =		http://xael.org/pages/

MAINTAINER = 		Remi Pointel <rpointel@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		net/nmap

NO_TEST =		Yes

EXAMPLESDIR =		${PREFIX}/share/examples/${MODPY_PY_PREFIX}nmap

post-install:
			${INSTALL_DATA_DIR} ${EXAMPLESDIR}
			${INSTALL_SCRIPT} ${WRKSRC}/example.py ${EXAMPLESDIR}

.include <bsd.port.mk>
