# $OpenBSD: Makefile,v 1.54 2013/07/05 07:38:47 jasper Exp $

COMMENT-main=		service daemon that monitors one or more GPSes
COMMENT-x11=		GUI test apps using gpsd
COMMENT-php=		web-based gpsd monitor in php

VERSION=		2.95
DISTNAME=		gpsd-${VERSION}
PKGNAME-main=		gpsd-${VERSION}
PKGNAME-x11=		gpsd-x11-${VERSION}
PKGNAME-php=		gpsd-php-${VERSION}
SHARED_LIBS=		gps	19.0 \
			gpsd	0.0
CATEGORIES=		misc geo

REVISION-main=		4
REVISION-php=		3
REVISION-x11=		0

HOMEPAGE=		http://gpsd.berlios.de/

MAINTAINER=		Chris Kuethe <ckuethe@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_BERLIOS:=gpsd/}

MODULES +=		lang/python lang/php
MODPHP_BUILDDEP=	No
USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-ntpshm \
			--enable-gpsd-user=_gpsd \
			--enable-tnt \
			--enable-oceanserver

PSEUDO_FLAVORS =	no_x11
FLAVOR?=

MULTI_PACKAGES=		-main -php

BUILD_DEPENDS=		textproc/docbook-xsl

RUN_DEPENDS-main=	${MODPY_RUN_DEPENDS}
LIB_DEPENDS-main=	devel/libusb1

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=	--without-x
CONFIGURE_ENV +=	LDFLAGS="-lm -pthread -lutil"
.else
MULTI_PACKAGES +=	-x11
RUN_DEPENDS-x11 =	${BASE_PKGPATH}
CONFIGURE_ENV+=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib -lm -pthread -lutil"
.endif

WANTLIB-main=		m ncurses c pthread stdc++ usb-1.0 util ${MODPY_WANTLIB}

# the php display script doesn't depend on having any of gpsd around,
# it just sits there and looks pretty.
PKG_ARCH-php=		*
RUN_DEPENDS-php=	lang/php/${MODPHP_VERSION},-gd
PREFIX-php=		${VARBASE}/www/

PYTHON_SCRIPTS=		gpsprof gps/gps.py gpsfake gpscat xgps gpsspeed

pre-configure:
.for file in ${PYTHON_SCRIPTS}
	perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},g' ${WRKSRC}/${file}
.endfor

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/var/www/gpsd
	${INSTALL_SCRIPT} ${WRKSRC}/gpsd.php ${WRKINST}/var/www/gpsd
	${INSTALL_DATA} ${WRKSRC}/gpsd_config.h ${PREFIX}/include

.include <bsd.port.mk>
