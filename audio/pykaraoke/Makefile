COMMENT =		free karaoke player

MODPY_EGG_VERSION =	0.7.5
DISTNAME =		pykaraoke-${MODPY_EGG_VERSION}
CATEGORIES =		audio
REVISION =		4

HOMEPAGE =		http://kibosh.org/pykaraoke/

# LGPL v2.1 or later
PERMIT_PACKAGE =	Yes

WANTLIB += SDL pthread ${MODPY_WANTLIB}

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pykaraoke/}
EXTRACT_SUFX =		.zip

MODULES =		lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

NO_TEST =		Yes

BUILD_DEPENDS =		x11/py-wxPython	\
			devel/pygame

RUN_DEPENDS =		x11/py-wxPython	\
			devel/pygame \
			devel/desktop-file-utils

pre-configure:
	${SUBST_CMD} ${WRKDIST}/setup.cfg
	@sed -i 's,python,${MODPY_BIN},g' ${WRKDIST}/install/*

.include <bsd.port.mk>
