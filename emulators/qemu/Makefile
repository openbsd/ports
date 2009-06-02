# $OpenBSD: Makefile,v 1.43 2009/06/02 22:47:52 todd Exp $

# no success building on other archs yet
ONLY_FOR_ARCHS=		amd64 i386 powerpc

COMMENT=		multi system emulator

DISTNAME=		qemu-0.9.1
PKGNAME=		${DISTNAME}p10
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
	@${SUBST_CMD} ${WRKSRC}/vl.c ${WRKSRC}/qemu-doc.texi

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qemu
	@${INSTALL_SCRIPT} ${FILESDIR}/qemu-ifup ${PREFIX}/share/examples/qemu
	@${INSTALL_SCRIPT} ${FILESDIR}/qemu-ifdown ${PREFIX}/share/examples/qemu
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/qemu
	@${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/doc/qemu/README.OpenBSD
	@chown ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/doc/qemu/README.OpenBSD

.include <bsd.port.mk>
