# $OpenBSD: Makefile,v 1.6 2019/07/12 21:07:46 sthen Exp $

CATEGORIES =	graphics
COMMENT =	KDE image effects
DISTNAME =	qimageblitz-0.0.6
REVISION =	3

EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS =	qimageblitz         0.0      # .4.0

# 2-clause BSDL
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_KDE:=stable/qimageblitz/}

WANTLIB =  c lib/qt4/QtGui m pthread
WANTLIB += ${COMPILER_LIBCXX}

MODULES =	x11/kde4
MODKDE4_USE =

.include <bsd.port.mk>
