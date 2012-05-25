# $OpenBSD: Makefile,v 1.2 2012/05/25 13:16:13 fgsch Exp $

COMMENT	=	spaced learning system

MODPY_EGG_VERSION = 1.2.11
DISTNAME =	anki-${MODPY_EGG_VERSION}
CATEGORIES =	education

HOMEPAGE =	http://ankisrs.net/

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://ankisrs.net/download/mirror/ \
		http://anki.googlecode.com/files/

EXTRACT_SUFX =	.tgz

MODULES =	lang/python

MODPY_SETUPTOOLS = Yes

BUILD_DEPENDS =	databases/py-sqlalchemy \
		devel/py-simplejson \
		x11/py-qt4
RUN_DEPENDS =	audio/py-audio \
		audio/sox \
		databases/py-sqlalchemy \
		devel/py-simplejson \
		www/py-beautifulsoup \
		x11/mplayer \
		x11/py-qt4

pre-build:
	@cd ${WRKSRC}/libanki && ${SETENV} ${MAKE_ENV} \
	    ${MODPY_BIN} ./${MODPY_SETUP} ${MODPY_DISTUTILS_BUILD}

pre-install:
	@cd ${WRKSRC}/libanki && ${SETENV} ${MAKE_ENV} \
	    ${MODPY_BIN} ./${MODPY_SETUP} ${MODPY_DISTUTILS_BUILD} \
	    ${MODPY_DISTUTILS_INSTALL}

.include <bsd.port.mk>
