# $OpenBSD: Makefile,v 1.4 2015/07/28 11:23:53 jca Exp $

COMMENT =		spreadsheet-like audio file tagger

MODPY_EGG_VERSION = 1.0.5
REVISION =		0
DISTNAME =		puddletag-${MODPY_EGG_VERSION}
CATEGORIES =		audio

HOMEPAGE =		http://puddletag.sourceforge.net

# XXX
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python

MODPY_SETUPTOOLS =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=puddletag/}

RUN_DEPENDS =		audio/py-mutagen \
			devel/py-configobj \
			devel/py-parsing \
			devel/desktop-file-utils \
			x11/py-qt4

NO_TEST =		Yes

.include <bsd.port.mk>
