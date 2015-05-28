# $OpenBSD: Makefile,v 1.4 2015/05/28 10:17:24 pascal Exp $

CATEGORIES =	graphics
COMMENT =	KDE image effects
DISTNAME =	qimageblitz-0.0.6
REVISION =	2

EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS =	qimageblitz         0.0      # .4.0

# 2-clause BSDL
PERMIT_PACKAGE_CDROM =          Yes

MASTER_SITES =	${MASTER_SITE_KDE:=stable/qimageblitz/}

WANTLIB =  c lib/qt4/QtGui m pthread

MODULES =	x11/kde4
MODKDE4_USE =

.include <bsd.port.mk>
