# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 11:35:04 zhuk Exp $

COMMENT =	KDE mobipocket plugins for Strigi, Okular and thumbnails
DISTNAME =	kdegraphics-mobipocket-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/okularcore
WANTLIB += streamanalyzer streams

LIB_DEPENDS =	databases/strigi \
		${MODKDE4_DEP_DIR}/okular>=${MODKDE4_DEP_VERSION}

.include <bsd.port.mk>
