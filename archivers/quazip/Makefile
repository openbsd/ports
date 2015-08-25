# $OpenBSD: Makefile,v 1.6 2015/08/25 13:18:24 sthen Exp $

COMMENT =	Qt/C++ wrapper for ZIP/UNZIP package
DISTNAME =	quazip-0.7.1
CATEGORIES =	archivers
REVISION =	0

SHARED_LIBS =	quazip 1.0		# 1.0

HOMEPAGE =	http://quazip.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += m stdc++ z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=quazip/}

MODULES =	devel/cmake \
		x11/qt4

NO_TEST =	Yes

CONFIGURE_ARGS =	-DBUILD_WITH_QT4=Yes

.include <bsd.port.mk>
