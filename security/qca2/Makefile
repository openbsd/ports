# $OpenBSD: Makefile,v 1.2 2009/08/10 06:34:29 kili Exp $

COMMENT =	Qt Cryptographic Architecture
SHARED_ONLY =	Yes

DISTNAME =	qca-2.0.0
PKGNAME =	qca2-2.0.0p0
CATEGORIES =	security
SHARED_LIBS +=	qca	3.0

HOMEPAGE =	http://delta.affinix.com/qca/

# LGPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		http://delta.affinix.com/download/qca/2.0/
EXTRACT_SUFX =		.tar.bz2

MODULES =		x11/qt4 devel/cmake

post-extract:
	cd ${WRKDIST}/cmake/modules && rm FindQt4.cmake

CONFIGURE_STYLE =	cmake
SEPARATE_BUILD =	simple
CONFIGURE_ENV +=	QTDIR=${MODQT_LIBDIR} HOME=${WRKDIR}

WANTLIB += QtGui
WANTLIB += ICE SM X11 Xcursor Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += c fontconfig freetype glib-2.0 gthread-2.0 iconv m
WANTLIB += png pthread pthread-stubs stdc++ xcb z
			
.include <bsd.port.mk>
