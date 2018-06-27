# $OpenBSD: Makefile,v 1.39 2018/06/27 21:03:38 espie Exp $

COMMENT =	logic circuit simulator for KDE

DISTNAME =	klogic-4.0.2
REVISION =	1

CATEGORIES =	cad education x11 x11/kde

HOMEPAGE =	http://www.a-rostin.de

MASTER_SITES =	${HOMEPAGE}/klogic/releases/
EXTRACT_SUFX =	.tar.gz

WANTLIB += QtDBus QtGui QtNetwork QtSvg QtXml c
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio m pthread
WANTLIB += ${COMPILER_LIBCXX}

# License information from homepage
# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	x11/kde4 \
		devel/cmake

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

BUILD_DEPENDS =	devel/gettext-tools

NO_TEST =	Yes

.include <bsd.port.mk>
