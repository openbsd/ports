COMMENT =	compiz configuration system bindings

DISTNAME =	compizconfig-python-0.8.4
REVISION =	3

MASTER_SITES =	http://releases.compiz.org/components/compizconfig-python/

WANTLIB =  ICE SM X11 X11-xcb Xcomposite Xdamage Xext Xfixes Xinerama
WANTLIB += Xrandr Xrender compizconfig glib-2.0 iconv intl lzma m pcre
WANTLIB += pthread startup-notification-1 xcb xcb-util xml2 xslt z

LIB_DEPENDS =	x11/compiz/libcompizconfig

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

BUILD_DEPENDS =	lang/cython${MODPY_FLAVOR}

LIBTOOL_FLAGS =	--tag=disable-static

AUTOCONF_VERSION = 2.63
AUTOMAKE_VERSION = 1.12
CONFIGURE_STYLE = autoreconf

pre-patch:
	@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python
	@ln -s ${LOCALBASE}/bin/cython${MODPY_BIN_SUFFIX} ${WRKDIR}/bin/cython

pre-build:
	@rm -f ${WRKSRC}/src/compizconfig.c

post-install:
	@rm -f ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.la

.include <bsd.port.mk>
