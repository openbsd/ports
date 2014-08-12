# $OpenBSD: Makefile,v 1.4 2014/08/12 00:05:47 zhuk Exp $

CATEGORIES =	productivity
COMMENT =	collaboration services library for KDE
DISTNAME =	attica-0.4.2
REVISION =	1

HOMEPAGE =	https://projects.kde.org/projects/frameworks/attica

SHARED_LIBS =	attica		1.0
EXTRACT_SUFX =	.tar.bz2

MASTER_SITES =	${MASTER_SITE_KDE:=stable/attica/}

WANTLIB =	m lib/qt4/QtNetwork

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		x11/kde4
MODKDE4_USE =

CONFIGURE_ARGS =	-DATTICA_ENABLE_TESTS:Bool=Yes

.include <bsd.port.mk>
