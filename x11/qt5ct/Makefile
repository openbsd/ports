# $OpenBSD: Makefile,v 1.8 2020/06/11 04:37:33 rsadowski Exp $

COMMENT =	Qt5 configuration tool

DISTNAME =	qt5ct-1.0
EXTRACT_SUFX =	.tar.bz2

CATEGORIES =	x11

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

MODULES =	devel/qmake x11/qt5

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=qt5ct/}
RUN_DEPENDS +=	devel/desktop-file-utils

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Widgets c m

.include <bsd.port.mk>
