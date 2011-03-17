# $OpenBSD: Makefile,v 1.10 2011/03/17 14:02:51 jasper Exp $

COMMENT=	graphical file comparator

V=		1.9
DISTNAME=	beediff_${V}_src
PKGNAME=	beediff-${V}
REVISION =	2
CATEGORIES=	textproc x11 devel

HOMEPAGE=	http://www.beesoft.pl/index.php?id=beediff
MASTER_SITES=	http://www.beesoft.pl/download/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender c expat fontconfig
WANTLIB += freetype glib-2.0 gobject-2.0 gthread-2.0
WANTLIB += m png pthread pthread-stubs stdc++ xcb z
WANTLIB += lib/qt4/QtGui

WRKDIST=	${WRKDIR}/beediff

MODULES=	devel/gettext \
		x11/qt4
NO_REGRESS=	Yes

MAKE_FLAGS=	CXX=${CXX} \
		QMAKE_CXXFLAGS="${CXXFLAGS} -g"

do-configure:
	cd ${WRKSRC} && ${LOCALBASE}/bin/qmake4 beediff.pro

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/beediff ${PREFIX}/bin

.include <bsd.port.mk>
