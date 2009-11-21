# $OpenBSD: Makefile,v 1.5 2009/11/21 13:41:15 fgsch Exp $

COMMENT =	system to automate the compile/test cycle

MODPY_EGG_VERSION =	0.7.11p3
DISTNAME =	buildbot-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME:S/p3/.3/}

CATEGORIES =   	devel

HOMEPAGE =	http://buildbot.net/

MAINTAINER =	Will Maier <wcmaier@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=buildbot/}

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

RUN_DEPENDS =	::devel/py-twisted/core \
		::devel/py-twisted/conch \
		::devel/py-twisted/mail \
		::devel/py-twisted/web \
		::devel/py-twisted/words
REGRESS_DEPENDS =	${RUN_DEPENDS}

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

do-regress: fake
	@${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
	    ${LOCALBASE}/bin/trial --temp-directory=${WRKBUILD} \
	    buildbot.test

.include <bsd.port.mk>
