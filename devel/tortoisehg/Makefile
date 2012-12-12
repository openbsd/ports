# $OpenBSD: Makefile,v 1.6 2012/12/12 06:07:53 rpointel Exp $

COMMENT =		series of applications for Mercurial

MODPY_EGG_VERSION =	2.6
DISTNAME =		tortoisehg-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://tortoisehg.bitbucket.org/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://bitbucket.org/tortoisehg/targz/downloads/

MODULES =		lang/python
BUILD_DEPENDS =		x11/py-qt4 \
			editors/qscintilla \
			devel/py-sip

RUN_DEPENDS =		${BUILD_DEPENDS} \
			editors/py-qscintilla \
			devel/mercurial>=2.4 \
			devel/py-iniparse

NO_REGRESS =		Yes

.include <bsd.port.mk>
