# $OpenBSD: Makefile,v 1.15 2007/09/04 21:06:07 jolan Exp $

COMMENT-main=		"service daemon that monitors one or more GPSes"
COMMENT-motif=		"motif-based test apps using gpsd"
COMMENT-php=		"web-based gpsd monitor in php"
COMMENT-python=		"python bindings for gpsd"

VERSION=		2.34
DISTNAME=		gpsd-${VERSION}
PKGNAME-main=		gpsd-${VERSION}
PKGNAME-motif=		gpsd-motif-${VERSION}
PKGNAME-php=		gpsd-php-${VERSION}
PKGNAME-python=		gpsd-python-${VERSION}p0
SHARED_LIBS=		gps	16.0
CATEGORIES=		misc geo

HOMEPAGE=		http://gpsd.berlios.de/

MAINTAINER=		Chris Kuethe <ckuethe@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_BERLIOS:=gpsd/}

USE_LIBTOOL=		yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-ntpshm

PSEUDO_FLAVORS=		no_motif no_python
FLAVOR?=

MULTI_PACKAGES=		-main -php

BUILD_DEPENDS=		::textproc/libxslt \
			::textproc/docbook \
			::textproc/docbook-xsl

.if ${FLAVOR:L:Mno_motif}
CONFIGURE_ARGS+=	--without-x
.else
MULTI_PACKAGES+=	-motif
WANTLIB-motif=		ICE Xaw X11 SM Xt c m pthread
LIB_DEPENDS-motif=	Xm::x11/openmotif gps::misc/gpsd
USE_X11=		Yes
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
.endif

.if ${FLAVOR:L:Mno_python}
CONFIGURE_ARGS+=	--disable-python
PATCH_LIST=		nopython-* patch-*
.else
MULTI_PACKAGES+=	-python
MODULES=		lang/python
LIB_DEPENDS-python=	gps::misc/gpsd
WANTLIB-python=		c m pthread
RUN_DEPENDS-main=
RUN_DEPENDS-motif=
CONFIGURE_ENV+=		PYTHON="${MODPY_BIN}"
PATCH_LIST=		python-* patch-*
.endif

WANTLIB-main=		m ncurses c pthread

# the php display script doesn't depend on having any of gpsd around,
# it just sits there and looks pretty.
PKG_ARCH-php=		*
RUN_DEPENDS-php=	:php5-gd-*:www/php5/extensions,-gd
PREFIX-php=		/var/www/

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/var/www/gpsd
	${INSTALL_SCRIPT} ${WRKSRC}/gpsd.php ${WRKINST}/var/www/gpsd

.include <bsd.port.mk>

