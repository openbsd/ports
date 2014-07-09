# $OpenBSD: Makefile,v 1.4 2014/07/09 20:03:25 zhuk Exp $

COMMENT =	KDE versatile math calculator
DISTNAME =	kcalc-${MODKDE4_VERSION}

WANTLIB =  c m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui
WANTLIB += gmp

LIB_DEPENDS =	devel/gmp

RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
