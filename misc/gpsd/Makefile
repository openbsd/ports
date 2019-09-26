# $OpenBSD: Makefile,v 1.76 2019/09/26 21:59:30 sthen Exp $

COMMENT-main=		service daemon that monitors one or more GPSes
COMMENT-x11=		GUI test apps using gpsd
COMMENT-php=		web-based gpsd monitor in php

VERSION=		3.19
DISTNAME=		gpsd-${VERSION}
PKGNAME-main=		gpsd-${VERSION}
PKGNAME-x11=		gpsd-x11-${VERSION}
PKGNAME-php=		gpsd-php-${VERSION}
REVISION-php=		0

SHARED_LIBS +=		gps	20.0 # 25.0
CATEGORIES=		misc geo

HOMEPAGE =		https://gpsd.gitlab.io/gpsd/index.html

# BSD
PERMIT_PACKAGE=		Yes

MASTER_SITES =		${MASTER_SITE_SAVANNAH:=gpsd/}

# C++11
COMPILER =		base-clang ports-gcc
WANTLIB-main +=	c dbus-1 m curses pthread usb-1.0 ${COMPILER_LIBCXX}
WANTLIB-php =

MODULES +=		devel/scons lang/python lang/php
MODPHP_BUILDDEP=	No
MODSCONS_FLAGS +=	gpsd_user=_gpsd \
			qt=no \
			mandir=man \
			pps=no \
			prefix=${PREFIX} \
			shared=yes \
			target_python=${MODPY_BIN} \
			python_libdir=${DESTDIR}/${MODPY_SITEPKG}

MULTI_PACKAGES =	-main -php -x11

BUILD_DEPENDS=		devel/py-gobject3 \
			textproc/xmlto \
			textproc/libxslt \
			textproc/docbook \
			textproc/docbook-xsl
TEST_DEPENDS=		${FULLPKGNAME-main}:${FULLPKGPATH-main} \
			x11/dbus

LIB_DEPENDS-main =	devel/libusb1 \
			x11/dbus \
			${MODGCC4_CPPLIBDEP}
RUN_DEPENDS-main=	${MODPY_RUN_DEPENDS} \
			devel/py-serial

RUN_DEPENDS-x11 =	${BASE_PKGPATH} \
			devel/py-gobject3 \
			devel/desktop-file-utils \
			x11/py-gtk2

# the php display script doesn't depend on having any of gpsd around,
# it just sits there and looks pretty.
PKG_ARCH-php=		*
RUN_DEPENDS-php=	lang/php/${MODPHP_VERSION},-gd
PREFIX-php=		${VARBASE}/www

SUBST_VARS +=		VERSION

MODPY_ADJ_FILES =	gegps gpsprof gps/gps.py gpsfake gpscat xgps xgpsspeed \
			leapsecond.py test_maidenhead.py test_misc.py ubxtool zerk

pre-configure:
	@perl -pi -e "s,/usr/share/gpsd/,," ${WRKSRC}/packaging/X11/*.desktop
	@perl -pi -e "s,http://docbook.sourceforge.net/release/xsl/current/,\
		${LOCALBASE}/share/xsl/docbook/," \
		${WRKSRC}/SConstruct
	@perl -pi -e "s,python2,${MODPY_BIN}," ${WRKSRC}/regress-driver
	${SUBST_CMD} ${WRKSRC}/SConstruct

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/var/www/gpsd
	${INSTALL_SCRIPT} ${WRKSRC}/gpsd.php ${WRKINST}/var/www/gpsd
	${INSTALL_DATA} ${WRKSRC}/gpsd_config.h ${PREFIX}/include
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${WRKSRC}/packaging/X11/*.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/packaging/X11/gpsd-logo.png \
		${PREFIX}/share/pixmaps/

	@find ${DESTDIR}/${MODPY_SITEPKG}/gps -name "*.py" -exec \
		${MODPY_BIN} ${MODPY_LIBDIR}/py_compile.py {} \;
	@find ${DESTDIR}/${MODPY_SITEPKG}/gps -name "*.py" -exec \
		${MODPY_BIN} -O ${MODPY_LIBDIR}/py_compile.py {} \;

# Needs running messagebus daemon
TEST_IS_INTERACTIVE=	Yes

do-test:
	@${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} check

.include <bsd.port.mk>
