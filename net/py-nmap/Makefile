# $OpenBSD: Makefile,v 1.9 2014/12/13 17:21:24 benoit Exp $

COMMENT =		python interface to the nmap scan data

MODPY_EGG_VERSION =	0.3.4
DISTNAME =		python-nmap-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/python/py/}
CATEGORIES =		net

HOMEPAGE =		http://xael.org/norman/python/python-nmap/
MASTER_SITES =		${HOMEPAGE}

MAINTAINER = 		Remi Pointel <rpointel@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

RUN_DEPENDS =		net/nmap

NO_TEST =		Yes

EXAMPLESDIR =		${PREFIX}/share/examples/py-nmap

post-install:
			${INSTALL_DATA_DIR} ${EXAMPLESDIR}
			${INSTALL_SCRIPT} ${WRKSRC}/example.py ${EXAMPLESDIR}

.include <bsd.port.mk>
