# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 11:35:52 zhuk Exp $

COMMENT =	KDE strigi analyzer for graphics files
DISTNAME =	kdegraphics-strigi-analyzer-${MODKDE4_VERSION}

WANTLIB =  c m stdc++
WANTLIB += streamanalyzer streams tiff

MODKDE4_NO_QT =	Yes
MODKDE4_USE =

BUILD_DEPENDS =	${MODKDE4_DEP_DIR}/libs

LIB_DEPENDS =	databases/strigi

.include <bsd.port.mk>
