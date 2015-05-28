# $OpenBSD: Makefile,v 1.7 2015/05/28 10:17:25 pascal Exp $

CATEGORIES =	productivity
COMMENT =	collaboration services library for KDE
DISTNAME =	attica-0.4.2
MAINTAINER =	KDE porting team <openbsd-kde@googlegroups.com>
REVISION =	4

HOMEPAGE =	https://projects.kde.org/projects/frameworks/attica

SHARED_LIBS =	attica		1.0
EXTRACT_SUFX =	.tar.bz2

MASTER_SITES =	${MASTER_SITE_KDE:=stable/attica/}

WANTLIB =	m lib/qt4/QtNetwork

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		x11/kde4
MODKDE4_USE =

CONFIGURE_ARGS =	-DATTICA_ENABLE_TESTS:Bool=Yes \
			-DQT4_BUILD=Yes

.include <bsd.port.mk>
