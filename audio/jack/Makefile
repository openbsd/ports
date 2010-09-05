# $OpenBSD: Makefile,v 1.13 2010/09/05 22:00:13 sthen Exp $

SHARED_ONLY =		Yes

COMMENT =		low latency sound server

V =			0.116.1
DISTNAME =		jack-audio-connection-kit-${V}
PKGNAME =		jack-${V}
REVISION =		4

SHARED_LIBS +=		jack		0.0	# 0.28
SHARED_LIBS +=		jackserver	0.0	# 0.28

CATEGORIES =		audio
HOMEPAGE =		http://jackaudio.org/

MAINTAINER =		Jacob Meuser <jakemsr@openbsd.org>

# LGPLv2/GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c m pthread readline sndio termcap sndfile.>=1 samplerate.>=1

MASTER_SITES =		${HOMEPAGE}downloads/

LIB_DEPENDS =		::audio/libsndfile \
			::audio/libsamplerate

# uses macros from libtool.m4
BUILD_DEPENDS =		::devel/libtool
USE_LIBTOOL =		Yes
LIBTOOL_FLAGS +=	--tag=disable-static

AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.9
CONFIGURE_STYLE =	autoconf automake
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-default-tmpdir=/var/tmp \
			--disable-sun \
			--disable-portaudio \
			--disable-optimize

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-pthread" \
			HAVE_DOXYGEN="false"

.ifdef DEBUG
CONFIGURE_ARGS +=	--enable-debug
.endif

post-extract:
	mkdir -p ${WRKSRC}/drivers/sndio
	cp ${FILESDIR}/Makefile.am ${FILESDIR}/sndio_driver.{c,h} \
		${WRKSRC}/drivers/sndio 

AUTO_ENV=	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}

post-patch:
	cd ${WRKSRC}; ${AUTO_ENV} aclocal

pre-configure:
	cd ${WRKSRC}; ${AUTO_ENV} automake --add-missing --foreign

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jack
	${INSTALL_DATA} ${FILESDIR}/README.OpenBSD ${PREFIX}/share/doc/jack

.include <bsd.port.mk>
