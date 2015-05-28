# $OpenBSD: Makefile,v 1.5 2015/05/28 10:17:26 pascal Exp $

COMMENT =	KDE strigi analyzer for graphics files
DISTNAME =	kdegraphics-strigi-analyzer-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  m
WANTLIB += streamanalyzer streams tiff

MODKDE4_NO_QT =	Yes
MODKDE4_USE =
KDE4_ONLY = Yes

BUILD_DEPENDS =	${MODKDE4_DEP_DIR}/libs

LIB_DEPENDS =	databases/strigi

.include <bsd.port.mk>
