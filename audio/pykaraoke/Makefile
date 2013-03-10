# $OpenBSD: Makefile,v 1.10 2013/03/10 22:55:05 espie Exp $

COMMENT =		free karaoke player

V =			0.7.1
MODPY_EGG_VERSION =	${V}
DISTNAME =		pykaraoke-${V}
REVISION =		5
CATEGORIES =		audio

HOMEPAGE =		http://kibosh.org/pykaraoke/

# LGPL v2.1 or later
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pykaraoke/}
EXTRACT_SUFX =		.zip

MODULES =		lang/python

WANTLIB +=		SDL ${MODPY_WANTLIB}
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		x11/py-wxPython	\
			audio/py-mutagen>=1.9 \
			devel/pygame \
			devel/desktop-file-utils

pre-configure:
		${SUBST_CMD} ${WRKDIST}/setup.cfg
		@perl -pi -e 's,python,${MODPY_BIN},g' ${WRKDIST}/install/*

.include <bsd.port.mk>
