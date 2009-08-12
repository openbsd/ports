# $OpenBSD: Makefile,v 1.40 2009/08/12 15:28:08 ajacoutot Exp $

ONLY_FOR_ARCHS=	alpha i386 powerpc sparc64 amd64

CATEGORIES=	x11

COMMENT=	DVD player
DISTNAME=	ogle-0.9.2
PKGNAME=	${DISTNAME}p7
SHARED_LIBS=	dvdcontrol	11.0 \
		msgevents	8.0
HOMEPAGE=	http://www.dtek.chalmers.se/groups/dvd/
# Authors can be reached at dvd@dtek.chalmers.se
MASTER_SITES=	${HOMEPAGE}dist/

MAINTAINER=	Marc Espie <espie@openbsd.org>

CONFIGURE_STYLE=	gnu

#FAKE=all
# GPL
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes

WANTLIB=	ICE SM X11 Xext Xinerama Xv Xxf86vm c m z \
		Xau Xdmcp pthread-stubs xcb

MODULES=	converters/libiconv

LIB_DEPENDS=	a52::audio/liba52 \
		dvdread.>=3.0::devel/libdvdread \
		xml2.>=6.19:libxml->=2.4.19:textproc/libxml \
		jpeg.>=62::graphics/jpeg \
		mad.>=2::audio/libmad

USE_X11=	Yes

FLAVORS=	altivec
FLAVOR?=

USE_LIBTOOL=	Yes
CONFIGURE_ARGS=--disable-oss --disable-sunaudio --enable-obsdaudio
#CONFIGURE_ARGS=--disable-oss --disable-sunaudio --disable-obsdaudio

.if ${FLAVOR:L} == "altivec"
ONLY_FOR_ARCHS=	powerpc
CONFIGURE_ARGS+=--enable-altivec
.else
CONFIGURE_ARGS+=--disable-altivec
.endif
CONFIGURE_ARGS+=--with-libjpeg=${DEPBASE} \
		--with-dvdread=${DEPBASE} \
		--with-liba52=${DEPBASE} \
		--with-libmad=${DEPBASE} \
		--with-xml-prefix=${DEPBASE}

CONFIGURE_ENV+=xml_config_args=--prefix=${DEPBASE}

post-install:
	cd ${PREFIX}/man/man5 && mv oglerc.5 oglerc.tbl
	cd ${PREFIX}/lib && \
	ln -sf ${TRUEPREFIX}/lib/ogle/libdvdcontrol.so.${LIBdvdcontrol_VERSION}
	cd ${PREFIX}/lib && \
	ln -sf ${TRUEPREFIX}/lib/ogle/libmsgevents.so.${LIBmsgevents_VERSION}

.include <bsd.port.mk>
