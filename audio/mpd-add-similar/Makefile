# $OpenBSD: Makefile,v 1.5 2013/03/10 22:55:04 espie Exp $

COMMENT =		add similar tracks to your mpd playlist

MODPY_EGG_VERSION =	0.1.6
DISTNAME =		mpd-add-similar-${MODPY_EGG_VERSION}
REVISION =		1
CATEGORIES =		audio net

HOMEPAGE =		http://launchpad.net/mpd-add-similar

MAINTAINER = 		Edd Barrett <edd@openbsd.org>

# GPLv2 or later
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${HOMEPAGE}/trunk/0.1.6/+download/

MODULES =	lang/python
RUN_DEPENDS =	audio/py-last \
		audio/py-mpd

NO_TEST =	Yes

.include <bsd.port.mk>
