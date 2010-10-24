# $OpenBSD: Makefile,v 1.11 2010/10/24 21:15:34 ajacoutot Exp $

COMMENT=	viewer for IETF RFCs

DISTNAME=	qrfcview-0.62
REVISION=	5
CATEGORIES=	x11

HOMEPAGE=	http://qrfcview.berlios.de/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender c expat fontconfig
WANTLIB += freetype glib-2.0 gobject-2.0 gthread-2.0 iconv intl
WANTLIB += m png pthread stdc++ z lib/qt4/QtGui lib/qt4/QtNetwork

LIB_DEPENDS=	::x11/qt4

MASTER_SITES=	${MASTER_SITE_BERLIOS:=qrfcview/}
EXTRACT_SUFX=	.tgz

MODULES=	x11/qt4
NO_REGRESS=	Yes

do-configure:
	perl -pi -e "s/!!CXXFLAGS!!/${CXXFLAGS}/" ${WRKSRC}/src/src.pro
	cd ${WRKDIST} && \
		${LOCALBASE}/bin/qmake4 -unix rfcview.pro

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/qRFCView ${PREFIX}/bin

.include <bsd.port.mk>
