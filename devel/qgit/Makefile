# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:27 espie Exp $

COMMENT =	qt git repository viewer
CATEGORIES =	devel x11
HOMEPAGE =	http://digilander.libero.it/mcostalba/

DISTNAME =	qgit-1.5.7
REVISION =	2
EXTRACT_SUFX =	.tar.bz2

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=qgit/}
MODULES =	x11/qt3

CONFIGURE_STYLE = gnu
CONFIGURE_ENV += ${MODQT_CONFIGURE_ENV} LDFLAGS=-L${LOCALBASE}/lib
CONFIGURE_ENV += QT_MOC=${MODQT3_MOC} QT_UIC=${MODQT3_UIC}
CONFIGURE_ARGS += ${MODQT_CONFIGURE_ARGS}

RUN_DEPENDS = devel/git

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xft c m pthread pthread-stubs stdc++ xcb

.include <bsd.port.mk>
