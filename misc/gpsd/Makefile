COMMENT-main=		service daemon that monitors one or more GPSes
COMMENT-x11=		GUI test apps using gpsd
COMMENT-php=		web-based gpsd monitor in php

VERSION=		3.25
DISTNAME=		gpsd-${VERSION}
PKGNAME-main=		gpsd-${VERSION}
PKGNAME-x11=		gpsd-x11-${VERSION}
PKGNAME-php=		gpsd-php-${VERSION}
REVISION-main=		0
REVISION-php=		0
REVISION-x11=		1

SHARED_LIBS +=		gps		23.0
SHARED_LIBS +=		gpsdpacket	1.0
CATEGORIES=		misc geo

HOMEPAGE =		https://gpsd.gitlab.io/gpsd/

# BSD
PERMIT_PACKAGE=		Yes

SITES =			${SITE_SAVANNAH:=gpsd/}

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
			python_shebang=${MODPY_BIN} \
			python_libdir=${DESTDIR}/${MODPY_SITEPKG}

MULTI_PACKAGES =	-main -php -x11

BUILD_DEPENDS=		devel/py-gobject3 \
			devel/py-serial \
			textproc/asciidoctor
TEST_DEPENDS=		${FULLPKGNAME-main}:${FULLPKGPATH-main} \
			x11/dbus

LIB_DEPENDS-main =	devel/libusb1 \
			x11/dbus \
			${MODGCC4_CPPLIBDEP}
RUN_DEPENDS-main=	${MODPY_RUN_DEPENDS} \
			devel/py-serial

RUN_DEPENDS-x11 =	${BASE_PKGPATH} \
			devel/py-gobject3 \
			graphics/py-matplotlib \
			devel/desktop-file-utils \
			x11/gtk+3

# the php display script doesn't depend on having any of gpsd around,
# it just sits there and looks pretty.
PKG_ARCH-php=		*
RUN_DEPENDS-php=	lang/php/${MODPHP_VERSION},-gd
PREFIX-php=		${VARBASE}/www

SUBST_VARS +=		VERSION

CFLAGS +=		-fPIC

pre-configure:
	@sed -i 's,/usr/local,${TRUEPREFIX},' ${WRKSRC}/packaging/X11/*.desktop
	${SUBST_CMD} ${WRKSRC}/SConscript

post-install:
	${INSTALL_DATA_DIR} ${WRKINST}/var/www/gpsd
	${INSTALL_SCRIPT} ${WRKSRC}/${PKGNAME}/clients/gpsd.php ${WRKINST}/var/www/gpsd
	${INSTALL_DATA} ${WRKSRC}/${PKGNAME}/include/gpsd_config.h ${PREFIX}/include
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/
	${INSTALL_DATA} ${WRKSRC}/packaging/X11/*.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/packaging/X11/gpsd-logo.png \
		${PREFIX}/share/pixmaps/
	sed -i 's,${WRKINST},,' ${PREFIX}/include/gpsd_config.h

	${MODPY_COMPILEALL} ${WRKINST}${MODPY_SITEPKG}/gps

# Needs running messagebus daemon
TEST_IS_INTERACTIVE=	Yes

do-test:
	@${SETENV} ${MAKE_ENV} ${MODSCONS_BIN} -C ${WRKSRC} \
		${MODSCONS_ENV} ${MODSCONS_FLAGS} check

.include <bsd.port.mk>
