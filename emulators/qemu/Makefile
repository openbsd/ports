# $OpenBSD: Makefile,v 1.37 2008/09/22 15:17:54 mpf Exp $

# no success building on other archs yet
ONLY_FOR_ARCHS=		amd64 i386 powerpc

COMMENT=		multi system emulator

DISTNAME=		qemu-0.9.1
PKGNAME=		${DISTNAME}p4
CATEGORIES=		emulators

HOMEPAGE=		http://bellard.org/qemu/

MAINTAINER=		Todd T. Fries <todd@openbsd.org>

# GPLv2/LGPLv2/BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

BUILD_DEPENDS=		::textproc/texi2html
USE_GMAKE=		Yes
WANTLIB=		c m ossaudio z
CONFIGURE_STYLE=	simple
CONFIGURE_ARGS+=	--prefix=${PREFIX} \
			--disable-vnc-tls

# Currently, the regression tests are utterly broken.
REGRESS_TARGET=		test test2

.if ${MACHINE_ARCH} == "amd64"
PATCH_LIST=     patch-* misc-*
.endif

FLAVORS=		no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--disable-gfx-check \
			--disable-sdl
.else
LIB_DEPENDS=    	SDL::devel/sdl

USE_X11=		Yes
WANTLIB+=		pthread
.endif

pre-configure:
	@perl -pi -e "s,!!LOCALBASE!!,${LOCALBASE},g;" ${WRKSRC}/vl.c ${WRKSRC}/qemu-doc.texi

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qemu
	@${INSTALL_SCRIPT} ${FILESDIR}/qemu-ifup ${PREFIX}/share/examples/qemu
	@${INSTALL_SCRIPT} ${FILESDIR}/qemu-ifdown ${PREFIX}/share/examples/qemu
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qemu
	@${INSTALL_SCRIPT} ${FILESDIR}/README.OpenBSD ${PREFIX}/share/doc/qemu

.include <bsd.port.mk>
