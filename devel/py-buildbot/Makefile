# $OpenBSD: Makefile,v 1.3 2009/03/15 12:49:35 espie Exp $

COMMENT =	system to automate the compile/test cycle

MODPY_EGG_VERSION =	0.7.9
DISTNAME =	buildbot-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}p0

CATEGORIES =   	devel

HOMEPAGE =	http://buildbot.net/

MAINTAINER =	Will Maier <wcmaier@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
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

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/buildbot/images
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/buildbot
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/buildbot
	${INSTALL_DATA} ${WRKSRC}/docs/examples/*.cfg \
	    ${PREFIX}/share/examples/buildbot
	cd ${WRKSRC}/docs && ${INSTALL_DATA} buildbot.html *.png \
	    ${PREFIX}/share/doc/buildbot
	cd ${WRKSRC}/docs/images && ${INSTALL_DATA} *.png \
	    ${PREFIX}/share/doc/buildbot/images
	cd ${WRKSRC} && pax -rw contrib ${PREFIX}/share/doc/buildbot

do-regress: fake
	@${MAKE_ENV} PYTHONPATH=${WRKINST}${MODPY_SITEPKG} \
	    ${LOCALBASE}/bin/trial --temp-directory=${WRKBUILD} \
	    buildbot.test

.include <bsd.port.mk>
