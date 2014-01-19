# $OpenBSD: Makefile,v 1.15 2014/01/19 17:53:40 rpointel Exp $

COMMENT =		series of applications for Mercurial

MODPY_EGG_VERSION =	2.10.2
DISTNAME =		tortoisehg-${MODPY_EGG_VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://tortoisehg.bitbucket.org/

MAINTAINER =		Remi Pointel <rpointel@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://bitbucket.org/tortoisehg/targz/downloads/

MODULES =		lang/python
BUILD_DEPENDS =		x11/py-qt4 \
			editors/qscintilla \
			devel/py-sip

RUN_DEPENDS =		${BUILD_DEPENDS} \
			editors/py-qscintilla \
			devel/mercurial>=2.8.2 \
			devel/py-iniparse

NO_TEST =		Yes

.include <bsd.port.mk>
