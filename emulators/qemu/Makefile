# $OpenBSD: Makefile,v 1.8 2005/11/25 04:12:54 todd Exp $

# no success building on other archs yet
ONLY_FOR_ARCHS=		amd64 i386 macppc

COMMENT=		"multi system emulator"
DISTNAME=		qemu-0.7.2
PKGNAME=		${DISTNAME}p2
CATEGORIES=		emulators

HOMEPAGE=		http://fabrice.bellard.free.fr/qemu/

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

BUILD_DEPENDS=		::textproc/texi2html
LIB_DEPENDS=    	SDL::devel/sdl
USE_GMAKE=		Yes
USE_X11=		Yes
WANTLIB=		m z ossaudio X11 Xext usbhid util pthread c
CONFIGURE_STYLE=	gnu

.if ${MACHINE_ARCH} == "amd64"
PATCH_LIST=     patch-* misc-*
.endif

.include <bsd.port.mk>
