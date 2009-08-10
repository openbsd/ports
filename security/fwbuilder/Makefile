# $OpenBSD: Makefile,v 1.15 2009/08/10 06:34:29 kili Exp $

COMMENT=	firewall GUI
DISTNAME=	fwbuilder-3.0.4
PKGNAME=	${DISTNAME}p1
CATEGORIES=	net security

HOMEPAGE=	http://www.fwbuilder.org/

MAINTAINER=	Vadim Zhukov <persgray@gmail.com>

# GPL v2
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fwbuilder/}

SHARE=		share/fwbuilder
SUBST_VARS=	SHARE

FLAVORS=	debug
FLAVOR?=

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-docdir=${TRUEPREFIX}/share/doc/fwbuilder \
		--with-templatedir=${TRUEPREFIX}/share/fwbuilder \
		--with-qtdir=${MODQT_QTDIR} \
		QMAKE=${MODQT_QTDIR}/bin/qmake

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+=--enable-debug
COPTS=		-g
.endif

MODULES=	x11/qt4
DESTDIRNAME=	INSTALL_ROOT
LIB_DEPENDS=	fwcompiler.>=11,fwbuilder.>=11::security/libfwbuilder \
		QtGui,QtNetwork::x11/qt4
		
NO_REGRESS=	Yes
USE_X11=	Yes

WANTLIB += ICE SM X11 Xext Xi Xinerama Xrender c fontconfig
WANTLIB += freetype glib-2.0 gthread-2.0 iconv intl m netsnmp
WANTLIB += png pthread stdc++ util xml2 xslt z expat gobject-2.0
WANTLIB += pthread-stubs xcb

post-install:
	chown ${BINOWN}:${BINGRP} ${PREFIX}/bin/*
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/64x64/apps
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/16x16/apps
	${INSTALL_DATA} ${WRKSRC}/src/gui/Icons/firewall_64.png \
		${PREFIX}/share/icons/hicolor/64x64/apps/fwbuilder.png
	${INSTALL_DATA} ${WRKSRC}/src/gui/Icons/firewall_16.png \
		${PREFIX}/share/icons/hicolor/16x16/apps/fwbuilder.png

.include <bsd.port.mk>
