# $OpenBSD: Makefile,v 1.18 2002/10/22 23:24:06 fgsch Exp $

ONLY_FOR_ARCHS=	alpha i386 powerpc sparc64

CATEGORIES=	x11

COMMENT=	"DVD player"
DISTNAME=	ogle-0.8.5
HOMEPAGE=	http://www.dtek.chalmers.se/groups/dvd/
# Authors can be reached at dvd@dtek.chalmers.se
MASTER_SITES=	${HOMEPAGE}dist/

MAINTAINER=	Marc Espie <espie@openbsd.org>

CONFIGURE_STYLE=	gnu

# GPL
PERMIT_DISTFILES_CDROM=Yes
PERMIT_DISTFILES_FTP=Yes
PERMIT_PACKAGE_CDROM=Yes
PERMIT_PACKAGE_FTP=Yes

BUILD_DEPENDS=	::audio/liba52 

LIB_DEPENDS=	dvdread::devel/libdvdread \
		xml2.6.19:libxml>=2.4.19:textproc/libxml \
		jpeg.62::graphics/jpeg \
		mad::audio/mad

FLAVORS=	altivec
FLAVOR?=

CONFIGURE_ARGS=--disable-oss --disable-sunaudio --enable-obsdaudio

.if ${FLAVOR:L} == "altivec"
ONLY_FOR_ARCHS=	powerpc
CONFIGURE_ARGS+=--enable-altivec
.else
CONFIGURE_ARGS+=--disable-altivec
.endif

.include <bsd.port.mk>
