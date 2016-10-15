# $OpenBSD: Makefile,v 1.1.1.1 2016/10/15 07:29:10 feinerer Exp $

COMMENT =		command line tool for PostgreSQL server activity monitoring

MODPY_EGG_VERSION =	1.3.1
DISTNAME =		pg_activity-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

GH_ACCOUNT =		julmon
GH_PROJECT =		pg_activity
GH_TAGNAME =		v${MODPY_EGG_VERSION}

CATEGORIES =		databases

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# PostgreSQL
PERMIT_PACKAGE_CDROM =	Yes

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
