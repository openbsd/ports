# $OpenBSD: Makefile,v 1.2 2010/11/15 00:22:47 espie Exp $

COMMENT =		add similar tracks to your mpd playlist

MODPY_EGG_VERSION =	0.1.6
DISTNAME =		mpd-add-similar-${MODPY_EGG_VERSION}
CATEGORIES =		audio net

HOMEPAGE =		http://launchpad.net/mpd-add-similar

MAINTAINER = 		Edd Barrett <edd@openbsd.org>

# GPLv2 or later
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${HOMEPAGE}/trunk/0.1.6/+download/

MODULES =	lang/python
RUN_DEPENDS =	audio/py-last \
		audio/py-mpd

NO_REGRESS =	Yes

.include <bsd.port.mk>
