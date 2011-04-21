# $OpenBSD: Makefile,v 1.11 2011/04/21 10:20:43 eric Exp $

COMMENT =	system to automate the compile/test cycle

MODPY_EGG_VERSION =	0.8.3p1
DISTNAME =	buildbot-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/p/./}

CATEGORIES =	devel

HOMEPAGE =	http://buildbot.net/

MAINTAINER =	Piotr Sikora <piotr.sikora@frickle.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://buildbot.googlecode.com/files/

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes
MODPY_BADEGGS =	buildbot

RUN_DEPENDS =	devel/py-twisted/core \
		devel/py-twisted/conch \
		devel/py-twisted/mail \
		devel/py-twisted/web \
		devel/py-twisted/words \
		www/py-jinja2 \
		${MODPY_JSON}

REGRESS_DEPENDS =	${RUN_DEPENDS} \
			devel/py-mock

HOMEDIR =		/var/buildbot

SUBST_VARS +=		HOMEDIR

post-configure:
	@cd ${WRKSRC}/docs && makeinfo --no-split --html buildbot

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-buildbot/images
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-buildbot
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/py-buildbot
	${INSTALL_DATA} ${WRKSRC}/docs/examples/*.cfg \
	    ${PREFIX}/share/examples/py-buildbot
	cd ${WRKSRC}/docs && ${INSTALL_DATA} buildbot.html *.png \
	    ${PREFIX}/share/doc/py-buildbot
	cd ${WRKSRC}/docs/images && ${INSTALL_DATA} *.png \
	    ${PREFIX}/share/doc/py-buildbot/images
	cd ${WRKSRC} && pax -rw contrib ${PREFIX}/share/doc/py-buildbot

do-regress:
	@${MAKE_ENV} PYTHONPATH=${WRKSRC} \
	    ${LOCALBASE}/bin/trial --temp-directory=${WRKBUILD}/regress \
	    buildbot.test

.include <bsd.port.mk>
