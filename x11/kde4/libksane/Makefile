# $OpenBSD: Makefile,v 1.4 2013/08/24 17:33:49 zhuk Exp $

COMMENT =	KDE SANE (scanner) wrapper library
DISTNAME =	libksane-${MODKDE4_VERSION}
REVISION =	0

SHARED_LIBS =	ksane			50.0	# 0.2

WANTLIB =  m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui
WANTLIB += sane

MODKDE4_USE =	libs

RUN_DEPENDS =	x11/gtk+2,-guic

LIB_DEPENDS = 	graphics/sane-backends

# TODO: Doesn't need Qt at all.

.include <bsd.port.mk>
