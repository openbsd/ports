# $OpenBSD: Makefile,v 1.2 2006/08/02 12:15:00 jasper Exp $

COMMENT=	"viewer for IETF RFCs"

DISTNAME=	qrfcview-0.62
CATEGORIES=	x11

HOMEPAGE=	http://qrfcview.berlios.de/

MAINTAINER=	Antoine Jacoutot <ajacoutot@lphp.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE Xrender SM freetype c pthread stdc++ Xrandr \
		Xinerama Xcursor Xext m Xi fontconfig X11 z QtGui \
		QtNetwork png

MASTER_SITES=	${MASTER_SITE_BERLIOS:=qrfcview/}
EXTRACT_SUFX=	.tgz


MODULES=	x11/qt4
USE_X11=	Yes
NO_REGRESS=	Yes

do-configure:
	perl -pi -e "s/!!CXXFLAGS!!/${CXXFLAGS}/" ${WRKSRC}/src/src.pro
	cd ${WRKDIST} && \
		${LOCALBASE}/bin/qmake4 -unix rfcview.pro

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/qRFCView ${PREFIX}/bin

.include <bsd.port.mk>
