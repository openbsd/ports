# $OpenBSD: Makefile,v 1.12 2011/11/03 22:13:23 jasper Exp $

COMMENT=	graphical file comparator

V=		1.9
DISTNAME=	beediff_${V}_src
PKGNAME=	beediff-${V}
REVISION =	4
CATEGORIES=	textproc x11 devel

HOMEPAGE=	http://www.beesoft.pl/index.php?id=beediff
MASTER_SITES=	http://www.beesoft.pl/download/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xext c m pthread stdc++
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
