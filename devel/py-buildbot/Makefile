# $OpenBSD: Makefile,v 1.22 2013/09/16 10:02:28 landry Exp $

COMMENT =	continuous integration framework

MODPY_EGG_VERSION =	0.8.8
DISTNAME =	buildbot-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/p/pl/}

CATEGORIES =	devel

HOMEPAGE =	http://buildbot.net/

MAINTAINER =	Landry Breuil <landry@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	https://buildbot.googlecode.com/files/

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes
MODPY_BADEGGS =	buildbot

RUN_DEPENDS =	databases/py-sqlalchemy \
		databases/py-sqlalchemy-migrate \
		devel/py-twisted/core \
		devel/py-twisted/conch \
		devel/py-twisted/mail \
		devel/py-twisted/web \
		devel/py-twisted/words \
		www/py-jinja2

TEST_DEPENDS =	${RUN_DEPENDS} \
			devel/py-mock

HOMEDIR =		/var/buildbot

SUBST_VARS +=		HOMEDIR

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-buildbot
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-buildbot
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-buildbot
	${INSTALL_DATA} ${WRKSRC}/docs/examples/*.cfg \
	    ${PREFIX}/share/examples/py-buildbot
	cd ${WRKSRC} && pax -rw contrib ${PREFIX}/share/doc/py-buildbot
	${INSTALL_MAN} ${WRKSRC}/docs/buildbot.1 ${PREFIX}/man/man1

do-test:
	@${MAKE_ENV} PYTHONPATH=${WRKSRC} \
	    ${LOCALBASE}/bin/trial --temp-directory=${WRKBUILD}/regress \
	    buildbot.test

.include <bsd.port.mk>
