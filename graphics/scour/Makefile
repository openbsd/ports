# $OpenBSD: Makefile,v 1.4 2016/09/14 12:15:46 czarkoff Exp $

COMMENT =		SVG scrubber
MODPY_EGG_VERSION =	0.35
CATEGORIES =		graphics
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>
HOMEPAGE =		http://www.codedread.com/scour/

PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		codedread
GH_PROJECT =		scour
GH_TAGNAME =		v${MODPY_EGG_VERSION}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =		devel/py-six

do-test:
	@cd ${WRKDIST} && ${MODPY_BIN} testscour.py
	@cd ${WRKDIST} && ${MODPY_BIN} testcss.py

.include <bsd.port.mk>
