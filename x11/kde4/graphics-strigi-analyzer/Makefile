# $OpenBSD: Makefile,v 1.3 2013/10/07 16:57:30 espie Exp $

COMMENT =	KDE strigi analyzer for graphics files
DISTNAME =	kdegraphics-strigi-analyzer-${MODKDE4_VERSION}

WANTLIB =  m stdc++
WANTLIB += streamanalyzer streams tiff

MODKDE4_NO_QT =	Yes
MODKDE4_USE =
KDE4_ONLY = Yes

BUILD_DEPENDS =	${MODKDE4_DEP_DIR}/libs

LIB_DEPENDS =	databases/strigi

.include <bsd.port.mk>
