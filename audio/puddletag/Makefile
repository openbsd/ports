# $OpenBSD: Makefile,v 1.6 2018/01/14 18:52:47 landry Exp $

COMMENT =		spreadsheet-like audio file tagger

MODPY_EGG_VERSION =	1.2.0
GH_ACCOUNT =		keithgg
GH_PROJECT =		puddletag
GH_TAGNAME =		v${MODPY_EGG_VERSION}
CATEGORIES =		audio

HOMEPAGE =		http://puddletag.net

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_2}
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =		audio/py-mutagen>=1.14 \
			devel/desktop-file-utils \
			devel/py-configobj \
			devel/py-parsing>=1.5.1 \
			x11/py-qt4>=4.5

NO_TEST =		Yes

WRKSRC =		${WRKDIST}/source

post-install:
	mv ${PREFIX}/share/man/man1/puddletag.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
