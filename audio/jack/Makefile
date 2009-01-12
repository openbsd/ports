# $OpenBSD: Makefile,v 1.7 2009/01/12 10:45:01 jakemsr Exp $

SHARED_ONLY =		Yes

COMMENT =		low latency sound server

V =			0.116.1
DISTNAME =		jack-audio-connection-kit-${V}
PKGNAME =		jack-${V}p0

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

WANTLIB =		c m pthread readline sndio termcap

MASTER_SITES =		${HOMEPAGE}downloads/

LIB_DEPENDS =		sndfile.>=1::audio/libsndfile \
			samplerate.>=1::audio/libsamplerate

USE_LIBTOOL =		Yes
LIBTOOL_FLAGS +=	--tag=disable-static

AUTOCONF_VERSION =	2.61
AUTOMAKE_VERSION =	1.9
BUILD_DEPENDS +=	${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-default-tmpdir=/var/tmp \
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

post-patch:
	cd ${WRKSRC} && AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} aclocal
	cd ${WRKSRC} && AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} autoheader
	cd ${WRKSRC} && AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} automake --add-missing --foreign
	cd ${WRKSRC} && AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} autoconf

.include <bsd.port.mk>
