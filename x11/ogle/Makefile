# $OpenBSD: Makefile,v 1.21 2003/03/28 18:16:44 espie Exp $

ONLY_FOR_ARCHS=	alpha i386 powerpc sparc64

CATEGORIES=	x11

COMMENT=	"DVD player"
DISTNAME=	ogle-0.9.1
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

LIB_DEPENDS=	dvdread.3.0::devel/libdvdread \
		xml2.6.19:libxml>=2.4.19:textproc/libxml \
		jpeg.62::graphics/jpeg \
		mad::audio/mad

FLAVORS=	altivec
FLAVOR?=

CONFIGURE_ARGS=--disable-oss --disable-sunaudio --enable-obsdaudio
#CONFIGURE_ARGS=--disable-oss --disable-sunaudio --disable-obsdaudio

.if ${FLAVOR:L} == "altivec"
ONLY_FOR_ARCHS=	powerpc
CONFIGURE_ARGS+=--enable-altivec
.else
CONFIGURE_ARGS+=--disable-altivec
.endif

post-install:
	cd ${PREFIX}/man/man5 && mv oglerc.5 oglerc.tbl

.include <bsd.port.mk>
