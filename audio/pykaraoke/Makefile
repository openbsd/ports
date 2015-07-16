# $OpenBSD: Makefile,v 1.13 2015/07/16 15:16:13 ajacoutot Exp $

COMMENT =		free karaoke player

V =			0.7.5
MODPY_EGG_VERSION =	${V}
DISTNAME =		pykaraoke-${V}
CATEGORIES =		audio

HOMEPAGE =		http://kibosh.org/pykaraoke/

# LGPL v2.1 or later
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${MODPY_WANTLIB}
WANTLIB += SDL pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pykaraoke/}
EXTRACT_SUFX =		.zip

MODULES =		lang/python

NO_TEST =		Yes

BUILD_DEPENDS =		x11/py-wxPython	\
			audio/py-mutagen>=1.9 \
			devel/pygame

RUN_DEPENDS =		x11/py-wxPython	\
			audio/py-mutagen>=1.9 \
			devel/pygame \
			devel/desktop-file-utils

pre-configure:
	${SUBST_CMD} ${WRKDIST}/setup.cfg
	@perl -pi -e 's,python,${MODPY_BIN},g' ${WRKDIST}/install/*

.include <bsd.port.mk>
