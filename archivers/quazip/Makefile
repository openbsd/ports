# $OpenBSD: Makefile,v 1.5 2015/01/10 05:00:40 bcallah Exp $

COMMENT =	Qt/C++ wrapper for ZIP/UNZIP package
DISTNAME =	quazip-0.7.1
CATEGORIES =	archivers

SHARED_LIBS =	quazip 1.0		# 1.0

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>
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
