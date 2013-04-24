# $OpenBSD: Makefile,v 1.1.1.1 2013/04/24 18:29:01 zhuk Exp $

COMMENT =	KDE SANE (scanner) wrapper library
DISTNAME =	libksane-${MODKDE4_VERSION}

SHARED_LIBS =	ksane			0.0	# 0.2

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui
WANTLIB += sane

MODKDE4_USE =	libs

LIB_DEPENDS = 	graphics/sane-backends

# TODO: Doesn't need Qt at all.

.include <bsd.port.mk>
