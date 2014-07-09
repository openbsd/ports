# $OpenBSD: Makefile,v 1.4 2014/07/09 20:03:24 zhuk Exp $

COMMENT =	KDE strigi analyzer for graphics files
DISTNAME =	kdegraphics-strigi-analyzer-${MODKDE4_VERSION}

WANTLIB =  m
WANTLIB += streamanalyzer streams tiff

MODKDE4_NO_QT =	Yes
MODKDE4_USE =
KDE4_ONLY = Yes

BUILD_DEPENDS =	${MODKDE4_DEP_DIR}/libs

LIB_DEPENDS =	databases/strigi

.include <bsd.port.mk>
