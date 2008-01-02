# $OpenBSD: Makefile,v 1.2 2008/01/02 22:17:51 bernd Exp $

COMMENT=	garmin gps map management tool

DISTNAME=	QLandkarte.2007.12.22
PKGNAME=	qlandkarte-0.6.0p0
CATEGORIES=	geo

HOMEPAGE=	http://qlandkarte.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qlandkarte/}

USE_X11=	Yes
MODULES=	x11/qt4
LIB_DEPENDS+=	proj::devel/proj \
		usb::devel/libusb \
		QtGui,QtNetwork,QtXml::x11/qt4

WANTLIB+=	ICE SM X11 Xcursor Xext Xfixes Xi Xinerama Xrandr Xrender \
		crypto fontconfig freetype glib-2.0 gthread-2.0 iconv \
		c intl m png pthread ssl stdc++ z

WRKDIST=	${WRKDIR}/QLandkarte
NO_REGRESS=	Yes

pre-configure:
	@perl -pi -e 's,!!PREFIX!!,${PREFIX},g' \
		${WRKSRC}/common
	@perl -pi -e 's,\/usr,${WRKINST}${PREFIX},g' \
		${WRKSRC}/src/src.pro
	@perl -pi -e 's,\$$\$$\{QLANDKARTE_LIBDIR\},\
		${WRKINST}${PREFIX}/lib/qlandkarte,g' \
		${WRKSRC}/src/device/*/*.pro

do-configure:
	@(cd ${WRKSRC} && qmake4)

.include <bsd.port.mk>
