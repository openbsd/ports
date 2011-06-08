# $OpenBSD: Makefile,v 1.3 2011/06/08 17:31:33 jasper Exp $

COMMENT =		add similar tracks to your mpd playlist

MODPY_EGG_VERSION =	0.1.6
DISTNAME =		mpd-add-similar-${MODPY_EGG_VERSION}
REVISION =		0
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
