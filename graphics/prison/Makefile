# $OpenBSD: Makefile,v 1.1.1.1 2013/03/21 08:26:19 zhuk Exp $

CATEGORIES =	graphics print
COMMENT =	Qt-based barcode abstraction library
VERSION =	1.0
DISTNAME =	prison-${VERSION}
HOMEPAGE =	http://projects.kde.org/prison

SHARED_LIBS =	prison			0.0

MASTER_SITES =	${MASTER_SITE_KDE:=stable/prison/${VERSION}/src/}
EXTRACT_SUFX =	.tar.gz

# BSDL
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	x11/kde4
MODKDE4_USE =

LIB_DEPENDS =	graphics/libdmtx \
		graphics/libqrencode

WANTLIB =	dmtx lib/qt4/QtGui m qrencode stdc++

post-patch:
	${SUBST_CMD} ${WRKSRC}/lib/prison/PrisonConfig.cmake.in

.include <bsd.port.mk>
