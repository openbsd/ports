# $OpenBSD: Makefile,v 1.7 2018/11/02 18:48:39 naddy Exp $

COMMENT =	KDE versatile math calculator
DISTNAME =	kcalc-${MODKDE4_VERSION}
REVISION =	2

WANTLIB =  c m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui
WANTLIB += gmp

LIB_DEPENDS =	devel/gmp

RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
