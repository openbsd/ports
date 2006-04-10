# $OpenBSD: Makefile,v 1.14 2006/04/10 21:10:05 todd Exp $

# no success building on other archs yet
ONLY_FOR_ARCHS=		amd64 arm i386 powerpc

COMMENT=		"multi system emulator"
DISTNAME=		qemu-0.8.0
PKGNAME=		${DISTNAME}p4
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

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qemu
	@${INSTALL_SCRIPT} ${FILESDIR}/qemu-ifup ${PREFIX}/share/examples/qemu

.include <bsd.port.mk>
