# $OpenBSD: Makefile,v 1.6 2017/07/27 11:57:48 sthen Exp $

COMMENT =	KDE versatile math calculator
DISTNAME =	kcalc-${MODKDE4_VERSION}
REVISION =	1

WANTLIB =  c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui
WANTLIB += gmp

LIB_DEPENDS =	devel/gmp

RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
