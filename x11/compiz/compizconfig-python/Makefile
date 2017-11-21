# $OpenBSD: Makefile,v 1.4 2017/11/21 00:13:04 naddy Exp $

COMMENT =	compiz configuration system bindings

DISTNAME =	compizconfig-python-0.8.4
REVISION =	2

MASTER_SITES =	http://releases.compiz.org/components/compizconfig-python/

WANTLIB =  ICE SM X11 X11-xcb Xcomposite Xdamage Xext Xfixes Xinerama
WANTLIB += Xrandr Xrender compizconfig glib-2.0 iconv intl lzma m pcre
WANTLIB += pthread startup-notification-1 xcb xcb-util xml2 xslt z

LIB_DEPENDS =	x11/compiz/libcompizconfig

MODULES =	lang/python

BUILD_DEPENDS =	devel/pyrex

LIBTOOL_FLAGS =	--tag=disable-static

CONFIGURE_STYLE = gnu

pre-patch:
	@ln -s ${MODPY_BIN} ${WRKDIR}/bin/python

pre-build:
	@rm -f ${WRKSRC}/src/compizconfig.c

post-install:
	@rm -f ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/*.la

.include <bsd.port.mk>
