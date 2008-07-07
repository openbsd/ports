# $OpenBSD: Makefile,v 1.5 2008/07/07 17:39:24 pvalchev Exp $

COMMENT=	garmin gps map management tool

DISTNAME=	QLandkarte_0.7.3
PKGNAME=	${DISTNAME:L:S/_/-/}
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

NO_REGRESS=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-qt-dir=${LOCALBASE}/lib/qt4 \
		--with-extra-libs=${LOCALBASE}/lib \
		--with-extra-includes=${LOCALBASE}/include \
		--enable-release

pre-configure:
	@perl -pi -e 's,\/usr,${WRKINST}${PREFIX},g' \
		${WRKSRC}/src/src.pro
	@perl -pi -e 's,!!QLANDKARTE_BINDIR!!,${WRKINST}${PREFIX}/bin,g' \
		${WRKSRC}/src/src.pro
	@perl -pi -e 's,\$$\$$\{QLANDKARTE_LIBDIR\},\
		${WRKINST}${PREFIX}/lib/qlandkarte,g' \
		${WRKSRC}/src/device/*/*.pro

post-install:
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/qlandkarte

.include <bsd.port.mk>
