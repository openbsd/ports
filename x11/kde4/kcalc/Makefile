# $OpenBSD: Makefile,v 1.3 2013/12/08 19:13:30 zhuk Exp $

COMMENT =	KDE versatile math calculator
DISTNAME =	kcalc-${MODKDE4_VERSION}

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui
WANTLIB += gmp

LIB_DEPENDS =	devel/gmp

RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
