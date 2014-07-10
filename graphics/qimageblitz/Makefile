# $OpenBSD: Makefile,v 1.2 2014/07/10 07:37:32 espie Exp $

CATEGORIES =	graphics
COMMENT =	KDE image effects
DISTNAME =	qimageblitz-0.0.6
REVISION =	0

EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS =	qimageblitz         0.0      # .4.0

# 2-clause BSDL
PERMIT_PACKAGE_CDROM =          Yes

MASTER_SITES =	${MASTER_SITE_KDE:=stable/qimageblitz/}

WANTLIB =  c lib/qt4/QtGui m pthread stdc++

MODULES =	x11/kde4
MODKDE4_USE =

.include <bsd.port.mk>
