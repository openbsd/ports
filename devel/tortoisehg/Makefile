# $OpenBSD: Makefile,v 1.9 2013/05/16 09:10:05 rpointel Exp $

COMMENT =		series of applications for Mercurial

MODPY_EGG_VERSION =	2.8
DISTNAME =		tortoisehg-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://tortoisehg.bitbucket.org/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://bitbucket.org/tortoisehg/targz/downloads/

MODULES =		lang/python
BUILD_DEPENDS =		x11/py-qt4 \
			editors/qscintilla \
			devel/py-sip

RUN_DEPENDS =		${BUILD_DEPENDS} \
			editors/py-qscintilla \
			devel/mercurial>=2.6.1 \
			devel/py-iniparse

NO_TEST =		Yes

.include <bsd.port.mk>
