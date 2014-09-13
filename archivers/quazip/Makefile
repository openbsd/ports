# $OpenBSD: Makefile,v 1.3 2014/09/13 13:11:17 bcallah Exp $

COMMENT =	Qt/C++ wrapper for ZIP/UNZIP package
DISTNAME =	quazip-0.7
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

.include <bsd.port.mk>
