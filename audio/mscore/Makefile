# $OpenBSD: Makefile,v 1.5 2013/04/22 14:42:45 sthen Exp $

COMMENT =	WYSIWYG music notation software (MuseScore)
DISTNAME =	mscore-1.3
REVISION =	1
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	audio x11
SUBST_VARS +=	DISTNAME

SHARED_ONLY =	Yes

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

HOMEPAGE =	http://musescore.org/

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c m portaudio pthread sndfile sndio z
WANTLIB += QtCore QtDesigner QtGui QtNetwork QtScript
WANTLIB += QtScriptTools QtSvg QtWebKit QtXml QtXmlPatterns

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mscore/}

# We get an internal compiler error: Segmentation Fault with
# in-base gcc, so use gcc 4.6
MODULES +=		gcc4
MODGCC4_ARCHS +=	*
MODGCC4_LANGS +=	c++

BUILD_DEPENDS =	devel/cmake

LIB_DEPENDS =	x11/qt4 \
		audio/portaudio-svn \
		audio/libsndfile>=1.0.25p0

RUN_DEPENDS =	devel/desktop-file-utils

ALL_TARGET =	release
NO_TEST =	Yes

.include <bsd.port.mk>
