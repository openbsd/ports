# $OpenBSD: Makefile,v 1.17 2014/07/09 16:49:35 jasper Exp $

COMMENT=	viewer for IETF RFCs

DISTNAME=	qrfcview-0.62
REVISION=	8
CATEGORIES=	x11

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender c expat fontconfig
WANTLIB += freetype glib-2.0 gobject-2.0 gthread-2.0
WANTLIB += m png pthread stdc++ z lib/qt4/QtGui lib/qt4/QtNetwork

LIB_DEPENDS=	x11/qt4

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qrfcview.berlios/}
EXTRACT_SUFX=	.tgz

MODULES=	x11/qt4 devel/gettext
NO_TEST=	Yes

do-configure:
	perl -pi -e "s/!!CXXFLAGS!!/${CXXFLAGS}/" ${WRKSRC}/src/src.pro
	cd ${WRKDIST} && \
		${LOCALBASE}/bin/qmake4 rfcview.pro

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/qRFCView ${PREFIX}/bin

.include <bsd.port.mk>
