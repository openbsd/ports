# $OpenBSD: Makefile,v 1.9 2014/03/10 20:27:25 landry Exp $

BROKEN-hppa =	ICE on moc_qtsingleapplication.cxx

COMMENT =	WYSIWYG music notation software (MuseScore)
DISTNAME =	mscore-1.3
REVISION =	3
EXTRACT_SUFX =	.tar.bz2
CATEGORIES =	audio x11
SUBST_VARS +=	DISTNAME

SHARED_ONLY =	Yes

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

HOMEPAGE =	http://musescore.org/

# GPLv2
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += c m portaudio pthread sndfile z
WANTLIB += lib/qt4/QtDesigner lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtScript lib/qt4/QtScriptTools lib/qt4/QtSvg
WANTLIB += lib/qt4/QtWebKit lib/qt4/QtXml lib/qt4/QtXmlPatterns

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mscore/}

MODULES =	x11/qt4

# ICE building moc_qtsingleapplication.cxx with base gcc 4.2.1 on amd64.
# possible problems with ppc. unsure about other arch.
MODULES +=		gcc4
MODGCC4_ARCHS +=	*
MODGCC4_LANGS +=	c++

BUILD_DEPENDS =	devel/cmake

LIB_DEPENDS =	audio/portaudio-svn \
		audio/libsndfile>=1.0.25p0

RUN_DEPENDS =	devel/desktop-file-utils

ALL_TARGET =	release
NO_TEST =	Yes

.include <bsd.port.mk>
