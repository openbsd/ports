# $OpenBSD: Makefile,v 1.16 2018/06/27 21:03:36 espie Exp $

COMMENT =		free karaoke player

MODPY_EGG_VERSION =	0.7.5
DISTNAME =		pykaraoke-${MODPY_EGG_VERSION}
CATEGORIES =		audio
REVISION =		1

HOMEPAGE =		http://kibosh.org/pykaraoke/

# LGPL v2.1 or later
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL pthread ${MODPY_WANTLIB}

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
	@sed -i 's,python,${MODPY_BIN},g' ${WRKDIST}/install/*

.include <bsd.port.mk>
