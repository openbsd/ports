# $OpenBSD: Makefile,v 1.3 2008/12/16 08:14:54 jasper Exp $

COMMENT=	graphical file comparator

V=		1.9
DISTNAME=	beediff_${V}_src
PKGNAME=	beediff-${V}
CATEGORIES=	textproc x11 devel

HOMEPAGE=	http://www.beesoft.pl/index.php?id=beediff
MASTER_SITES=	http://www.beesoft.pl/download/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xext Xi Xinerama Xrandr Xrender c fontconfig \
		freetype glib-2.0 gthread-2.0 iconv intl m png pthread \
		stdc++ z

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
