# $OpenBSD: Makefile,v 1.5 2009/08/10 06:31:07 kili Exp $

COMMENT=	graphical file comparator

V=		1.9
DISTNAME=	beediff_${V}_src
PKGNAME=	beediff-${V}p1
CATEGORIES=	textproc x11 devel

HOMEPAGE=	http://www.beesoft.pl/index.php?id=beediff
MASTER_SITES=	http://www.beesoft.pl/download/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender c expat fontconfig
WANTLIB += freetype glib-2.0 gobject-2.0 gthread-2.0 iconv intl
WANTLIB += m png pthread pthread-stubs stdc++ xcb z

LIB_DEPENDS+=	lib/qt4/QtGui::x11/qt4

WRKDIST=	${WRKDIR}/beediff

MODULES=	x11/qt4
USE_X11=	Yes
NO_REGRESS=	Yes

MAKE_FLAGS=	CXX=${CXX} \
		QMAKE_CXXFLAGS="${CXXFLAGS} -g"

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/qmake4 -unix beediff.pro

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/beediff ${PREFIX}/bin

.include <bsd.port.mk>
