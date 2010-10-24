# $OpenBSD: Makefile,v 1.16 2010/10/24 21:19:47 ajacoutot Exp $

COMMENT=	garmin gps map management tool

DISTNAME=	QLandkarte_final
PKGNAME=	qlandkarte-0.7.4
REVISION=	0

CATEGORIES=	geo x11

HOMEPAGE=	http://qlandkarte.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qlandkarte/}

USE_GROFF =	Yes
MODULES=	x11/qt4
LIB_DEPENDS+=	::devel/proj \
		::devel/libusb \
		::x11/qt4
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

WANTLIB+=	ICE SM X11 Xext Xi Xinerama Xrender \
		fontconfig freetype glib-2.0 gthread-2.0 iconv \
		c intl m png pthread stdc++ z expat gobject-2.0 \
		pthread-stubs xcb proj usb QtGui QtNetwork QtXml

PORTHOME=	${WRKDIR}

NO_REGRESS=	Yes
AUTOCONF_VERSION=2.59
CONFIGURE_STYLE= autoconf gnu
CONFIGURE_ARGS=	--with-qt-dir=${LOCALBASE}/lib/qt4 \
		--with-extra-libs=${LOCALBASE}/lib \
		--with-extra-includes=${LOCALBASE}/include \
		--enable-release

QLANDKARTE_BINDIR=	${WRKINST}${PREFIX}/bin
SUBST_VARS+=	CXXFLAGS QLANDKARTE_BINDIR

pre-configure:
	@perl -pi -e 's,\/usr,${WRKINST}${PREFIX},g' \
		${WRKSRC}/src/src.pro
	@perl -pi -e 's,\$$\$$\{QLANDKARTE_LIBDIR\},\
		${WRKINST}${PREFIX}/lib/qlandkarte,g' \
		${WRKSRC}/src/device/*/*.pro
	${SUBST_CMD} ${WRKSRC}/src/src.pro \
		${WRKSRC}/common.in

post-install:
	@chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/qlandkarte

.include <bsd.port.mk>
