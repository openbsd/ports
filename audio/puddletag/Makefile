# $OpenBSD: Makefile,v 1.2 2014/05/07 12:17:29 landry Exp $

COMMENT =	spreadsheet-like audio file tagger

MODPY_EGG_VERSION = 1.0.3
DISTNAME =	puddletag-${MODPY_EGG_VERSION}
CATEGORIES =	audio
REVISION =	0

PERMIT_PACKAGE_CDROM =	Yes

HOMEPAGE =	http://puddletag.sourceforge.net
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=puddletag/}

NO_TEST =	Yes
MODULES =	lang/python
RUN_DEPENDS =	audio/py-mutagen \
		devel/py-configobj \
		devel/py-parsing \
		devel/desktop-file-utils \
		x11/py-qt4

.include <bsd.port.mk>
