# $OpenBSD: Makefile,v 1.16 2002/08/18 09:38:26 espie Exp $

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

.if ${MACHINE_ARCH} == "i386"
BUILD_DEPENDS+=	::devel/binutils/stable
MAKE_ENV=GAS_DIR=${TRUEPREFIX}/${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}/bin
.endif

.if ${FLAVOR:L} == "altivec"
ONLY_FOR_ARCHS=	powerpc
.endif

.include <bsd.port.mk>
