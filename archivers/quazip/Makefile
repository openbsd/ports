# $OpenBSD: Makefile,v 1.1.1.1 2013/03/18 14:49:27 bcallah Exp $

COMMENT =	Qt/C++ wrapper for ZIP/UNZIP package
DISTNAME =	quazip-0.5.1
CATEGORIES =	archivers

SHARED_LIBS =	quazip 0.0		# 0.0

MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

HOMEPAGE =	http://quazip.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += m stdc++ z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=quazip/}

MODULES =	devel/cmake \
		x11/qt4

NO_TEST =	Yes

.include <bsd.port.mk>
