# $OpenBSD: Makefile,v 1.12 2018/06/29 22:16:31 espie Exp $

COMMENT =	KDE SANE (scanner) wrapper library
CATEGORIES =	graphics devel
DISTNAME =	libksane-${MODKDE4_VERSION}
REVISION =	3

SHARED_LIBS =	ksane			50.0	# 0.2

WANTLIB =  m pthread
WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtSvg
WANTLIB += ${KDE4LIB}/kdeui
WANTLIB += sane

MODKDE4_USE =	libs

RUN_DEPENDS =	x11/gtk+3,-guic

LIB_DEPENDS = 	graphics/sane-backends

# TODO: Doesn't need Qt at all.

.include <bsd.port.mk>
