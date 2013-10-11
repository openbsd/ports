# $OpenBSD: Makefile,v 1.26 2013/10/11 23:49:45 naddy Exp $

COMMENT=	garmin gps map management tool

DISTNAME=	QLandkarte_final
PKGNAME=	qlandkarte-0.7.4
REVISION=	5

CATEGORIES=	geo x11

HOMEPAGE=	http://qlandkarte.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=qlandkarte/}

MODULES=	x11/qt4
LIB_DEPENDS+=	devel/proj \
		devel/libusb-compat
RUN_DEPENDS=	devel/desktop-file-utils

WANTLIB += QtGui QtNetwork QtXml X11 Xext c m proj pthread stdc++
WANTLIB += usb ICE SM Xi Xinerama Xrender fontconfig freetype

PORTHOME=	${WRKDIR}

NO_TEST=	Yes
AUTOCONF_VERSION=2.59
CONFIGURE_STYLE= autoconf
CONFIGURE_ENV+=	'LDFLAGS=-pthread'
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
