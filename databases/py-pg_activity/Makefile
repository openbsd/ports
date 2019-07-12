# $OpenBSD: Makefile,v 1.4 2019/07/12 20:44:00 sthen Exp $

COMMENT =		command line tool for PostgreSQL server activity monitoring

MODPY_EGG_VERSION =	1.5.0
DISTNAME =		pg_activity-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

GH_ACCOUNT =		julmon
GH_PROJECT =		pg_activity
GH_TAGNAME =		v${MODPY_EGG_VERSION}

CATEGORIES =		databases

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# PostgreSQL
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_SETUP_ARGS =	--with-man
RUN_DEPENDS =		databases/py-psycopg2 \
			sysutils/py-psutil

post-patch:
	sed -i 's|/usr/share|${LOCALBASE}|' ${WRKSRC}/setup.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-pg_activity
	${INSTALL_DATA} ${WRKSRC}/LICENSE.txt ${PREFIX}/share/doc/py-pg_activity

.include <bsd.port.mk>
