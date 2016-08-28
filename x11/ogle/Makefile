# $OpenBSD: Makefile,v 1.59 2016/08/28 14:35:54 jca Exp $

ONLY_FOR_ARCHS =	alpha i386 powerpc sparc64 amd64

CATEGORIES =	x11

COMMENT =	DVD player
DISTNAME =	ogle-0.9.2
REVISION =	18
SHARED_LIBS =	dvdcontrol	11.0 \
		msgevents	8.0
HOMEPAGE =	http://www.dtek.chalmers.se/groups/dvd/
# Authors can be reached at dvd@dtek.chalmers.se
MASTER_SITES =	${HOMEPAGE}dist/

MAINTAINER =	Marc Espie <espie@openbsd.org>

CONFIGURE_STYLE =	gnu

#FAKE=all
# GPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ICE SM X11 Xext Xinerama Xv Xxf86vm a52 c dvdread iconv
WANTLIB += jpeg lzma m mad pthread sndio xcb xml2 z

LIB_DEPENDS =	audio/liba52 \
		converters/libiconv \
		devel/libdvdread \
		textproc/libxml>=2.4.19 \
		graphics/jpeg \
		audio/libmad

USE_GROFF =	Yes

FLAVORS =	altivec
FLAVOR ?=

CONFIGURE_ARGS =	--disable-oss --disable-sunaudio --enable-obsdaudio

.if ${FLAVOR} == "altivec"
ONLY_FOR_ARCHS =	powerpc
CONFIGURE_ARGS +=	--enable-altivec
.else
CONFIGURE_ARGS +=	--disable-altivec
.endif
CONFIGURE_ARGS +=	--with-libjpeg=${LOCALBASE} \
			--with-dvdread=${LOCALBASE} \
			--with-liba52=${LOCALBASE} \
			--with-libmad=${LOCALBASE} \
			--with-xml-prefix=${LOCALBASE}

CONFIGURE_ENV +=	xml_config_args=--prefix=${LOCALBASE} \
			LIBOGLEAO_LIBS="-lsndio"

post-install:
	cd ${PREFIX}/lib && \
	ln -sf ${TRUEPREFIX}/lib/ogle/libdvdcontrol.so.${LIBdvdcontrol_VERSION}
	cd ${PREFIX}/lib && \
	ln -sf ${TRUEPREFIX}/lib/ogle/libmsgevents.so.${LIBmsgevents_VERSION}

.include <bsd.port.mk>
