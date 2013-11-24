# $OpenBSD: Makefile,v 1.2 2013/11/24 19:56:31 zhuk Exp $

COMMENT =	KDE versatile math calculator
DISTNAME =	kcalc-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui
WANTLIB += gmp

LIB_DEPENDS =	devel/gmp

RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
