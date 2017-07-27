# $OpenBSD: Makefile,v 1.6 2017/07/27 11:57:48 sthen Exp $

COMMENT =	KDE strigi analyzer for graphics files
DISTNAME =	kdegraphics-strigi-analyzer-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =  m
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += streamanalyzer streams tiff

MODKDE4_NO_QT =	Yes
MODKDE4_USE =
KDE4_ONLY = Yes

BUILD_DEPENDS =	${MODKDE4_DEP_DIR}/libs

LIB_DEPENDS =	databases/strigi

.include <bsd.port.mk>
