# $OpenBSD: Makefile,v 1.1.1.1 2009/10/15 22:19:04 phessler Exp $

COMMENT =		free karaoke player

V =			0.7.1
MODPY_EGG_VERSION =	${V}
DISTNAME =		pykaraoke-${V}
CATEGORIES =		audio

HOMEPAGE =		http://kibosh.org/pykaraoke/

# LGPL v2.1 or later
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=pykaraoke/}
EXTRACT_SUFX =		.zip

MODULES =		lang/python

WANTLIB +=		SDL
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		::x11/py-wxPython			\
			:py-mutagen->=1.9:audio/py-mutagen	\
			::devel/pygame

pre-configure:
		${SUBST_CMD} ${WRKDIST}/setup.cfg
		@perl -pi -e 's,python,${MODPY_BIN},g' ${WRKDIST}/install/*

.include <bsd.port.mk>
